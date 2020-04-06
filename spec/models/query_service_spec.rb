# frozen_string_literal: true
require "rails_helper"

RSpec.describe QueryService do
  let(:qs) { described_class.new(page_size: 3) }

  before do
    allow(ENV).to receive(:[]).and_call_original
    allow(ENV).to receive(:[]).with("TOKEN").and_return("123456a")
    # use webmock to mock the token request and the search queries
  end

  describe "#search_institution" do
    let(:page1) { Rails.root.join("spec", "fixtures", "search_institution_rows_0-2.json") }
    let(:page2) { Rails.root.join("spec", "fixtures", "search_institution_rows_3-5.json") }
    before do
      stub_request(:get, "https://pub.orcid.org/v3.0/search/?q=affiliation-org-name:(%22Princeton%20University%22)&rows=3&start=0")
        .to_return(status: 200, body: page1, headers: {})
      stub_request(:get, "https://pub.orcid.org/v3.0/search/?q=affiliation-org-name:(%22Princeton%20University%22)&rows=3&start=3")
        .to_return(status: 200, body: page2, headers: {})
    end

    it "accepts a string and executes a search, navigating pagination, to return an array of orcid id hashes" do
      results = qs.search_institution("Princeton University")
      expect(results.count).to eq 6
      expect(results.first["orcid-identifier"]).to be_a Hash
      expect(results.first["orcid-identifier"].keys).to include("host", "path", "uri")
    end
  end

  describe "#token" do
    context "with a TOKEN environment variable" do
      it "returns that value" do
        expect(qs.token).to eq "123456a"
      end
    end
  end

  # private methods
  describe "url builder" do
    it "forms url as expected by the service" do
      fields = { "affiliation-org-name" => "Princeton University" }
      expect(qs.build_url(fields: fields, start: 0, rows: 1000).to_s).to eq "https://pub.orcid.org/v3.0/search/?q=affiliation-org-name:(%22Princeton%20University%22)&start=0&rows=1000"
    end
  end
end
