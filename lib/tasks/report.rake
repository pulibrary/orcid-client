# frozen_string_literal: true
namespace :orcid do
  desc "Write CSV report of query provided in ENV. Defaults to institution query."
  # TOKEN also must be provided as an ENV var
  # @see services/orcid-api/query.rb for other query options"
  # note the institution query takes about an hour to run
  task report: :environment do
    query = ENV["QUERY"] || "institution"
    timestamp = Time.current.strftime("%Y%m%d%H%M%S")
    out_path = Rails.root.join("tmp", "report_#{query}_#{timestamp}.csv")
    results = OrcidApi::Query.send(query.to_sym)
    Report.new(records: results, out_path: out_path, logger: Logger.new(STDOUT)).csv
  end

  desc "Read CSV of people and write CSV of potentially-matching orcid results"
  task search_people: :environment do
    in_path = ENV["INPUT"]
    abort "usage: INPUT=path/to/file.csv rake orcid:search_people" unless in_path
    timestamp = Time.current.strftime("%Y%m%d%H%M%S")
    out_path = Rails.root.join("tmp", "report_people_#{timestamp}.csv")
    people = CsvReader.new(in_path: in_path).people
    records = people.map do |person|
      OrcidApi::Query.search_person(
        given_name: person.given_name,
        family_name: person.family_name,
        email: person.email
      )
    end.flatten.compact
    Report.new(records: records, out_path: out_path, logger: Logger.new(STDOUT)).csv
  end
end
