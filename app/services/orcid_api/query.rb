# frozen_string_literal: true

# results = OrcidApi::Query.institution
module OrcidApi
  class Query
    def self.fetch_record(orcid:)
      new.fetch_record(orcid)
    end

    def self.institution(affiliation: nil, grid: nil, ringgold: nil)
      new(affiliation: affiliation, grid: grid, ringgold: ringgold).search_institution
    end

    def self.affiliation(affiliation: nil)
      new(affiliation: affiliation).search_affiliation
    end

    def self.grid(grid: nil)
      new(grid: grid).search_grid
    end

    def self.ringgold(ringgold: nil)
      new(ringgold: ringgold).search_ringgold
    end

    # the number of rows to retrieve at a time
    PAGE_SIZE = 1000
    attr_reader :affiliation, :grid, :ringgold

    def initialize(affiliation: nil, grid: nil, ringgold: nil)
      @affiliation = affiliation || "Princeton University"
      @grid = grid || "grid.16750.35"
      @ringgold = ringgold || "6740"
    end

    def search_institution
      fielded_search(
        "affiliation-org-name" => affiliation,
        "grid-org-id" => grid,
        "ringgold-org-id" => ringgold
      )
    end

    def search_affiliation
      fielded_search("affiliation-org-name" => affiliation)
    end

    def search_grid
      fielded_search("grid-org-id" => grid)
    end

    def search_ringgold
      fielded_search("ringgold-org-id" => ringgold)
    end

    def fetch_record(orcid)
      api_instance.view_recordv3(orcid)
    end

    private

      def api_instance
        SwaggerClient::DevelopmentMemberAPIV30Api.new
      end

      # rubocop:disable Metrics/MethodLength
      def fielded_search(fields)
        results = []
        start = 0

        loop do
          opts = {
            q: fielded_query(fields),
            rows: PAGE_SIZE,
            start: start
          }

          # Search records
          result = api_instance.search_by_queryv3(opts)
          results.push(*result.result)
          start += PAGE_SIZE
          break if start >= result.num_found
        end
        results.map do |result|
          fetch_record(result.orcid_identifier.path)
        end
      end
      # rubocop:enable Metrics/MethodLength

      def fielded_query(fields)
        fields.to_a.map do |tuple|
          "#{tuple.first}:(\"#{tuple.last}\")"
        end.join(" OR ")
      end
  end
end
