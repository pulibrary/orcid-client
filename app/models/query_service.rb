# frozen_string_literal: true

class QueryService
  # rows is the number of rows to retrieve at a time;
  #   adjust on tests to allow for smaller fixtures
  def search_institution(value, rows: 1000)
    fields = { "affiliation-org-name" => value }
    results = []
    start = 0
    loop do
      url = build_url(fields: fields, start: start, rows: rows)
      result_body = request(url)
      result_hash = JSON.parse(result_body)
      results.concat(result_hash["result"])
      start += rows
      break if start >= result_hash["num-found"]
    end
    results
  end

  def request(url)
    Net::HTTP.start(url.host, url.port, use_ssl: true) do |http|
      req = Net::HTTP::Get.new(url)
      req["Content-type"] = "application/vnd.orcid+json"
      req["Authorization type"] = "Bearer"
      req["Access token"] = token

      http.request(req).body
    end
  end

  # Default to rows 0 through 999; second page should start with 1000
  def build_url(fields: {}, start:, rows:)
    URI::HTTPS.build(host: base_url, path: "/v#{api_version}/search/", query: "q=#{fielded_query(fields)}&start=#{start}&rows=#{rows}")
  end

  def fielded_query(fields)
    fields.to_a.map do |tuple|
      "#{tuple.first}:(\"#{tuple.last}\")"
    end.join("+AND+")
  end

  def token
    OrcidApi.config[:token]
  end

  def base_url
    OrcidApi.config[:api_url]
  end

  def api_version
    OrcidApi.config[:api_version]
  end
end
