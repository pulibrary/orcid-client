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

    it "retrieves a SwaggerClient::RecordV30" do
      stub_orcid(id: orcid, fixture: record_body)
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
      let(:page1) { Rails.root.join("spec", "fixtures", "search_institution.json") }

      it "executes a search with default parameters, navigating pagination, to return an array of orcid models" do
        stub_institution(rows: 3, start: 0, fixture: page1)
        results = described_class.institution
        expect(results.count).to eq 3
        expect(results.first).to be_a SwaggerClient::RecordV30
      end
    end

    describe ".affiliation" do
      let(:page1) { Rails.root.join("spec", "fixtures", "search_affiliation_page1.json") }
      let(:page2) { Rails.root.join("spec", "fixtures", "search_affiliation_page2.json") }

      it "accepts a string and executes a search, navigating pagination, to return an array of orcid models" do
        stub_affiliation(rows: 3, start: 0, fixture: page1)
        stub_affiliation(rows: 3, start: 3, fixture: page2)
        results = described_class.affiliation
        expect(results.count).to eq 6
      end
    end

    describe ".grid" do
      let(:page1) { Rails.root.join("spec", "fixtures", "search_grid_page1.json") }
      let(:page2) { Rails.root.join("spec", "fixtures", "search_grid_page2.json") }

      it "accepts a string and executes a search, navigating pagination, to return an array of orcid models" do
        stub_grid(rows: 3, start: 0, fixture: page1)
        stub_grid(rows: 3, start: 3, fixture: page2)
        results = described_class.grid
        expect(results.count).to eq 5
      end
    end

    describe ".ringgold" do
      let(:page1) { Rails.root.join("spec", "fixtures", "search_ringgold_page1.json") }
      let(:page2) { Rails.root.join("spec", "fixtures", "search_ringgold_page2.json") }

      it "accepts a string and executes a search, navigating pagination, to return an array of orcid models" do
        stub_ringgold(rows: 3, start: 0, fixture: page1)
        stub_ringgold(rows: 3, start: 3, fixture: page2)
        results = described_class.ringgold
        expect(results.count).to eq 4
      end
    end
  end

  describe ".search_person" do
    context "person found by email" do
      let(:orcid_fixture) { Rails.root.join("spec", "fixtures", "record_single_email.json") }
      let(:email_fixture) { Rails.root.join("spec", "fixtures", "search_email.json") }
      let(:email) { "person@example.com" }
      it "returns a record" do
        stub_orcid(id: "0000-0001-5819-1135", fixture: orcid_fixture)
        stub_email(email: email, rows: 3, start: 0, fixture: email_fixture)
        result = described_class.search_person(email: email)
        expect(result.first.person.name.given_names.value).to eq "Daniel"
      end
    end

    context "person found by name" do
      let(:orcid_fixture) { Rails.root.join("spec", "fixtures", "record.json") }
      let(:name_fixture) { Rails.root.join("spec", "fixtures", "search_name.json") }
      let(:given_name) { "Wind" }
      let(:family_name) { "Cowles" }
      it "returns a record" do
        stub_orcid(id: "0000-0001-9489-0750", fixture: orcid_fixture)
        stub_name(given_name: given_name, family_name: family_name, rows: 3, start: 0, fixture: name_fixture)
        result = described_class.search_person(given_name: given_name, family_name: family_name)
        expect(result.first.person.name.given_names.value).to eq "Wind"
      end
    end

    context "no result" do
      let(:search_fixture) { Rails.root.join("spec", "fixtures", "search_empty.json") }
      let(:given_name) { "Mr" }
      let(:family_name) { "Peanut" }
      it "returns an empty array" do
        stub_name(given_name: given_name, family_name: family_name, rows: 3, start: 0, fixture: search_fixture)
        result = described_class.search_person(given_name: given_name, family_name: family_name)
        expect(result).to eq []
      end
    end
  end
end
