# frozen_string_literal: true
require "rails_helper"

RSpec.describe OrcidApi::Query do
  before do
    stub_const("OrcidApi::Query::PAGE_SIZE", 3)
  end

  # NOTE: this one is sending the alternate headers
  describe ".fetch_record" do
    let(:record_body) { Rails.root.join("spec", "fixtures", "record.json") }
    let(:orcid) { "0000-0001-9489-0750" }
    before do
      stub_request(:get, "https://pub.orcid.org/v3.0/#{orcid}")
        .with(
          headers: {
            "Authorization" => "Bearer test_token"
          }
        )
        .to_return(status: 200, body: record_body, headers: {})
    end
    it "retrieves a SwaggerClient::RecordV30" do
      record = described_class.fetch_record(orcid: orcid)
      expect(record).to be_a SwaggerClient::RecordV30
    end
  end

  context "search methods" do
    let(:qs) { described_class.new }

    before do
      allow(described_class).to receive(:new).and_return(qs)
      allow(qs).to receive(:fetch_record).and_return(SwaggerClient::RecordV30.new)
    end

    describe ".institution" do
      let(:page1) { Rails.root.join("spec", "fixtures", "search_institution_rows_0-2.json") }

      before do
        stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)%20OR%20grid-org-id:(%22grid.16750.35%22)%20OR%20ringgold-org-id:(%226740%22)&rows=3&start=0")
          .to_return(status: 200, body: page1, headers: {})
      end

      it "executes a search with default parameters, navigating pagination, to return an array of orcid models" do
        results = described_class.institution
        expect(results.count).to eq 3
        expect(results.first).to be_a SwaggerClient::RecordV30
      end
    end

    describe ".search_affiliation" do
      let(:page1) { Rails.root.join("spec", "fixtures", "search_affiliation_rows_0-2.json") }
      let(:page2) { Rails.root.join("spec", "fixtures", "search_affiliation_rows_3-5.json") }

      # stub headers here but not in general throughout all specs. We just want to
      # make sure we're validating the headers in at least one test.
      before do
        stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)&start=0&rows=3")
          .with(
            headers: {
              "Accept" => "application/vnd.orcid+json; qs=4",
              "Authorization type" => "Bearer",
              "Access token" => "test_token",
              "Content-Type" => "application/json"
            }
          )
          .to_return(status: 200, body: page1, headers: {})
        stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)&start=3&rows=3")
          .with(
            headers: {
              "Accept" => "application/vnd.orcid+json; qs=4",
              "Authorization type" => "Bearer",
              "Access token" => "test_token",
              "Content-Type" => "application/json"
            }
          )
          .to_return(status: 200, body: page2, headers: {})
      end

      it "accepts a string and executes a search, navigating pagination, to return an array of orcid models" do
        results = described_class.affiliation
        expect(results.count).to eq 6
      end
    end

    describe ".search_grid" do
      let(:page1) { Rails.root.join("spec", "fixtures", "search_grid_rows_0-2.json") }
      let(:page2) { Rails.root.join("spec", "fixtures", "search_grid_rows_3-4.json") }

      before do
        stub_request(:get, "https://pub.orcid.org/v3.0/search?q=grid-org-id:(%22grid.16750.35%22)&rows=3&start=0")
          .to_return(status: 200, body: page1, headers: {})
        stub_request(:get, "https://pub.orcid.org/v3.0/search?q=grid-org-id:(%22grid.16750.35%22)&rows=3&start=3")
          .to_return(status: 200, body: page2, headers: {})
      end

      it "accepts a string and executes a search, navigating pagination, to return an array of orcid models" do
        results = described_class.grid
        expect(results.count).to eq 5
      end
    end

    describe ".search_ringgold" do
      let(:page1) { Rails.root.join("spec", "fixtures", "search_ringgold_rows_0-2.json") }
      let(:page2) { Rails.root.join("spec", "fixtures", "search_ringgold_row_3.json") }

      before do
        stub_request(:get, "https://pub.orcid.org/v3.0/search?q=ringgold-org-id:(%226740%22)&rows=3&start=0")
          .to_return(status: 200, body: page1, headers: {})
        stub_request(:get, "https://pub.orcid.org/v3.0/search?q=ringgold-org-id:(%226740%22)&rows=3&start=3")
          .to_return(status: 200, body: page2, headers: {})
      end

      it "accepts a string and executes a search, navigating pagination, to return an array of orcid models" do
        results = described_class.ringgold
        expect(results.count).to eq 4
      end
    end
  end
end
