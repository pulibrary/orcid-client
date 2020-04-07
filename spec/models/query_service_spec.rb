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
      stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)&start=0&rows=3")
        .to_return(status: 200, body: page1, headers: {})
      stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)&start=3&rows=3")
        .to_return(status: 200, body: page2, headers: {})
    end

    it "accepts a string and executes a search, navigating pagination, to return an array of orcid id hashes" do
      results = qs.search_institution("Princeton University")
      expect(results.count).to eq 6
      expect(results.first.orcid_identifier.path).to eq "0000-0003-4571-9046"
    end
  end
end
