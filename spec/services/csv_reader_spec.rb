# frozen_string_literal: true
require "rails_helper"

RSpec.describe CsvReader do
  describe "#people" do
    let(:in_path) { Rails.root.join("spec", "fixtures", "people.csv").to_s }
    let(:people) { described_class.new(in_path: in_path).people }

    it "provides a list of people" do
      expect(people.first.given_name).to eq "Eliot"
      expect(people.first.family_name).to eq "Jordan"
      expect(people.first.email).to eq "eliotj@princeton.edu"
      expect(people.last.given_name).to eq "Wind"
      expect(people.last.family_name).to eq "Cowles"
      expect(people.last.email).to eq "windcowles@princeton.edu"
    end
  end
end
