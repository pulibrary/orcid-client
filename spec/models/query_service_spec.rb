# frozen_string_literal: true
require "rails_helper"

RSpec.describe QueryService do
  let(:qs) { described_class.new }

  describe "#search_institution" do
    it "accepts a string and returns a hash of result objects" do
      expect(qs.search_institution("Princeton University")).to eq(name: ["Eliot Jordan"], orcid: "12345-678")
    end
  end

  # private methods
  describe "url builder" do
    it "forms url as expected by the service" do
      expect(qs.build_url(fields: { "affiliation-org-name" => "Princeton University" }).to_s).to eq "https://api.orcid.org/v3.0/search/?q=affiliation-org-name:(%22Princeton%20University%22)"
    end
  end

end
