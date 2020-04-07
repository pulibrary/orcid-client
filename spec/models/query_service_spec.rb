# frozen_string_literal: true
require "rails_helper"

RSpec.describe QueryService do
  let(:qs) { described_class.new(page_size: 3) }

  describe "#search_institution" do
    let(:page1) { Rails.root.join("spec", "fixtures", "search_institution_rows_0-2.json") }
    it "executes a search with default parameters, navigating pagination, to return an array of orcid models" do
      stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)%20OR%20grid-org-id:(%22grid.16750.35%22)%20OR%20ringgold-org-id:(%226740%22)&rows=3&start=0")
        .to_return(status: 200, body: page1, headers: {})

      results = qs.search_institution
      expect(results.count).to eq 3
      expect(results.first.orcid_identifier.path).to eq "0000-0002-8471-7302"
    end
  end

  describe "#search_affiliation" do
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
      results = qs.search_affiliation("Princeton University")
      expect(results.count).to eq 6
      expect(results.first.orcid_identifier.path).to eq "0000-0003-4571-9046"
    end
  end

  describe "#search_grid" do
    let(:page1) { Rails.root.join("spec", "fixtures", "search_grid_rows_0-2.json") }
    let(:page2) { Rails.root.join("spec", "fixtures", "search_grid_rows_3-4.json") }

    before do
      stub_request(:get, "https://pub.orcid.org/v3.0/search?q=grid-org-id:(%22grid.16750.35%22)&rows=3&start=0")
        .to_return(status: 200, body: page1, headers: {})
      stub_request(:get, "https://pub.orcid.org/v3.0/search?q=grid-org-id:(%22grid.16750.35%22)&rows=3&start=3")
        .to_return(status: 200, body: page2, headers: {})
    end

    it "accepts a string and executes a search, navigating pagination, to return an array of orcid models" do
      results = qs.search_grid("grid.16750.35")
      expect(results.count).to eq 5
      expect(results.first.orcid_identifier.path).to eq "0000-0001-7864-0364"
    end
  end

  describe "#search_ringgold" do
    let(:page1) { Rails.root.join("spec", "fixtures", "search_ringgold_rows_0-2.json") }
    let(:page2) { Rails.root.join("spec", "fixtures", "search_ringgold_row_3.json") }

    before do
      stub_request(:get, "https://pub.orcid.org/v3.0/search?q=ringgold-org-id:(%226740%22)&rows=3&start=0")
        .to_return(status: 200, body: page1, headers: {})
      stub_request(:get, "https://pub.orcid.org/v3.0/search?q=ringgold-org-id:(%226740%22)&rows=3&start=3")
        .to_return(status: 200, body: page2, headers: {})
    end

    it "accepts a string and executes a search, navigating pagination, to return an array of orcid models" do
      results = qs.search_ringgold("6740")
      expect(results.count).to eq 4
      expect(results.first.orcid_identifier.path).to eq "0000-0002-2525-2912"
    end
  end
end
