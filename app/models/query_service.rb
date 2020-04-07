# frozen_string_literal: true

class QueryService
  attr_reader :page_size, :affiliation, :grid, :ringgold
  # page_size: the number of rows to retrieve at a time;
  #   adjust on tests to allow for smaller fixtures
  def initialize(page_size: nil, affiliation: nil, grid: nil, ringgold: nil)
    @page_size = page_size || 1000
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

  def fielded_search(fields)
    results = []
    start = 0
    api_instance = SwaggerClient::DevelopmentMemberAPIV30Api.new

    loop do
      opts = {
        q: fielded_query(fields),
        rows: page_size,
        start: start
      }

      # Search records
      result = api_instance.search_by_queryv3(opts)
      results.push(*result.result)
      start += page_size
      break if start >= result.num_found
    end
    results
  end

  def fielded_query(fields)
    fields.to_a.map do |tuple|
      "#{tuple.first}:(\"#{tuple.last}\")"
    end.join(" OR ")
  end
end
