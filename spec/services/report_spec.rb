# frozen_string_literal: true
require "rails_helper"

RSpec.describe Report do
  describe ".csv" do
    let(:filename) { "record.json" }
    let(:records) do
      [
        load_record_fixture("record.json"),
        load_record_fixture("record_multi_employment.json"),
        load_record_fixture("record_multi_email.json"),
        load_record_fixture("record_empty.json")
      ]
    end
    let(:csv_fixture_path) { Rails.root.join("spec", "fixtures", "report.csv").to_s }
    let(:csv_fixture) do
      File.read(csv_fixture_path)
    end
    let(:out_path) { Rails.root.join("tmp", "test_report.csv").to_s }

    context "when the report succeeds" do
      after do
        File.delete(out_path)
      end

      it "builds the desired CSV file" do
        described_class.new(records: records, out_path: out_path).csv
        expect(system("diff", out_path, csv_fixture_path)).to be true
      end
    end

    context "when there's an error" do
      let(:records) { [load_record_fixture("record_empty.json")] }
      let(:decorator) { instance_double(Report::CsvDecorator) }
      let(:logger) { instance_double(Logger) }
      before do
        allow(Report::CsvDecorator).to receive(:new).and_return(decorator)
        allow(decorator).to receive(:given_name).and_raise(StandardError, "test_error")
        allow(decorator).to receive(:orcid).and_return("test_orcid")
        allow(logger).to receive(:error)
      end

      it "logs the orcid id" do
        expect do
          described_class.new(records: records, out_path: out_path, logger: logger).csv
        end.to raise_error("test_error")
        expect(logger).to have_received(:error)
      end
    end
  end

  describe "Report::CsvDecorator" do
    let(:filename) { "record.json" }
    let(:record) do
      load_record_fixture(filename)
    end
    let(:decorator) { Report::CsvDecorator.new(record: record) }

    it "provides access methods for the fields we want" do
      expect(decorator.orcid).to eq "0000-0001-9489-0750"
      expect(decorator.given_name).to eq "Wind"
      expect(decorator.family_name).to eq "Cowles"
      expect(decorator.email).to be_nil
      expect(decorator.organization).to eq "Princeton University"
      expect(decorator.department).to eq "Library"
      expect(decorator.title).to eq "Director, Princeton Research Data Service"
    end
    context "when a record has no name" do
      let(:filename) { "record_missing_name.json" }
      it "returns a nil for name fields" do
        expect(decorator.family_name).to be_nil
        expect(decorator.given_name).to be_nil
      end
    end
    context "when a record has no family name" do
      let(:filename) { "record_no_family_name.json" }
      it "returns a nil for family name" do
        expect(decorator.family_name).to be_nil
      end
    end
    context "when a record has no employment summaries" do
      let(:filename) { "record_empty.json" }
      it "returns nil values" do
        expect(decorator.organization).to be_nil
        expect(decorator.title).to be_nil
        expect(decorator.department).to be_nil
      end
    end
    context "when an employment affiliation has no start date" do
      let(:filename) { "record_missing_start_date.json" }
      it "returns the first employment summary" do
        expect(decorator.organization).to eq "Genentech"
      end
    end
    context "when an employment affiliation has an incomplete start date" do
      let(:filename) { "record_incomplete_start_date.json" }
      it "returns the first employment summary" do
        expect(decorator.organization).to eq "Columbia University"
      end
    end
    context "when an employment affiliation has an invalid start date" do
      let(:filename) { "record_invalid_start_date.json" }
      it "returns the first employment summary" do
        expect(decorator.organization).to eq "SCB geosciences"
      end
    end
    context "when record has multiple employment summaries" do
      let(:filename) { "record_multi_employment.json" }
      it "provides the most recent employment data" do
        expect(decorator.organization).to eq "Princeton University"
        expect(decorator.department).to eq "Library"
        expect(decorator.title).to eq "Assistant Director for IT"
      end
    end
    context "when record has a single email address" do
      let(:filename) { "record_single_email.json" }
      it "returns the email address" do
        expect(decorator.email).to eq "person@example.com"
      end
    end
    context "when record has multiple email addresses" do
      let(:filename) { "record_multi_email.json" }
      it "returns all email addresses" do
        expect(decorator.email).to eq "person1@example.com;person2@example.com"
      end
    end
  end
  def load_record_fixture(filename)
    path = Rails.root.join("spec", "fixtures", filename)
    fixture = File.read(path)
    fixture_hash = JSON.parse(fixture, symbolize_names: true)
    SwaggerClient::RecordV30.new.build_from_hash(fixture_hash)
  end
end
