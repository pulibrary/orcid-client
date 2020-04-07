# frozen_string_literal: true

class QueryService
  attr_reader :page_size
  # page_size: the number of rows to retrieve at a time;
  #   adjust on tests to allow for smaller fixtures
  def initialize(page_size: 1000)
    @page_size = page_size
  end

  def search_institution

  end

  def search_affiliation(value)
    fielded_search("affiliation-org-name" => value)
  end

  def search_grid(value)
    fielded_search("grid-org-id" => value)
  end

  def search_ringgold(value)
    fielded_search("ringgold-org-id" => value)
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
    end.join("+AND+")
  end
end
