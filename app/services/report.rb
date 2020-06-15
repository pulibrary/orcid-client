# frozen_string_literal: true
require "csv"

# Builds CSV reports from orcid api result lists
class Report
  attr_reader :records, :out_path, :logger
  # @param records [Array<RecordV30>]
  # @param out_path [String] path to CSV file output
  # @param logger [Logger]
  def initialize(records:, out_path:, logger: Rails.logger)
    @records = records
    @out_path = out_path
    @logger = logger
  end

  # rubocop:disable Metrics/MethodLength
  def csv
    records.map! { |record| CsvRecordPresenter.new(record: record) }
    CSV.open(out_path, "wb") do |csv|
      csv << field_list
      records.each do |record|
        begin
          field_values = []
          field_list.each do |field|
            val = [record.send(field)]
            field_values.concat(val)
          end
          csv << field_values
        rescue StandardError => e
          logger.error("ORCID: #{record.orcid}")
          raise e
        end
      end
    end
  end
  # rubocop:enable Metrics/MethodLength

  class CsvRecordPresenter
    attr_reader :record
    def initialize(record:)
      @record = record
    end

    def orcid
      record.orcid_identifier.path
    end

    def given_name
      record.person.name&.given_names&.value
    end

    def family_name
      record.person.name&.family_name&.value
    end

    def email
      return nil if record.person.emails.email.empty?
      record.person.emails.email.map(&:email).join(";")
    end

    def organization
      current_employment&.organization&.name
    end

    def department
      current_employment&.department_name
    end

    def title
      current_employment&.role_title
    end

    private

      def current_employment
        current = employment_summaries.first
        # they all must have dates
        return current unless employment_summaries.count == employment_summaries.select { |es| !es.start_date&.year.nil? }.count
        # dates must all be different from one another
        return current unless employment_summaries.count == employment_summaries.map(&:start_date).uniq.count
        # get one with latest start date
        begin
          employment_summaries.sort do |a, b|
            a_date = build_date(a.start_date)
            b_date = build_date(b.start_date)
            a_date <=> b_date
          end.last
        rescue ArgumentError
          return current
        end
      end

      def build_date(start_date)
        day = start_date.day&.value || 1
        month = start_date.month&.value || 1
        Date.new(start_date.year.value.to_i, month.to_i, day.to_i)
      end

      def employment_summaries
        record.activities_summary.employments.affiliation_group.map { |group| group.summaries.first.employment_summary }
      end
  end

  private

    def field_list
      [
        :orcid,
        :given_name,
        :family_name,
        :email,
        :organization,
        :department,
        :title
      ]
    end
end
