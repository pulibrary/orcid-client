# frozen_string_literal: true
namespace :orcid do
  desc "Write CSV report of query provided in ENV. Defaults to institution query."
  # TOKEN also must be provided as an ENV var
  # @see services/orcid-api/query.rb for other query options"
  task report: :environment do
    query = ENV["QUERY"] || "institution"
    timestamp = Time.current.strftime("%Y%m%d%H%M%S")
    out_path = Rails.root.join("tmp", "report_#{query}_#{timestamp}.csv")
    results = OrcidApi::Query.send(query.to_sym)
    Report.new(records: results, out_path: out_path, logger: Logger.new(STDOUT)).csv
  end
end
