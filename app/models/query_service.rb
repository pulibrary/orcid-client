# frozen_string_literal: true

class QueryService
  TOKEN_URL = "orcid.org/oauth/token"
  attr_reader :token
  def initialize(base_url: "pub.orcid.org", api_version: "3.0")
    @base_url = base_url
    @api_version = api_version
  end

  def search_institution(value)
    url = build_url(fields: { "affiliation-org-name" => value })
    result = request(url)
    { name: [value] }
  end


  # def token
  #   @token ||= do
  #     ENV.fetch(:token) || request_token
  #   end
  # end
  #
  # do a Net::HTTP request to fetch a token
  def request_token
      # https://orcid.org/oauth/token 
      #   METHOD: POST
      #     HEADER: accept:application/json
      #       DATA: 
      #             client_id=[Your client ID]
      #           client_secret=[Your client secret]
      #               grant_type=client_credentials
      #                   scope=/read-public


    Net::HTTP.start(url.host, url.port, use_ssl: true) do |http|
      req = Net::HTTP::Get.new(url)
      req["Content-type"] = "application/vnd.orcid+json"
      req["Authorization type"] = "Bearer"
      req["Access token"] = token

      result = http.request(req)
      binding.pry
    end
    result
  end

  def request(url)
    Net::HTTP.start(url.host, url.port, use_ssl: true) do |http|
      req = Net::HTTP::Get.new(url)
      req["Content-type"] = "application/vnd.orcid+json"
      req["Authorization type"] = "Bearer"
      req["Access token"] = token

      result = http.request(req)
      binding.pry
    end
    result
  end

  def build_url(fields: {})
    URI::HTTPS.build(host: @base_url, path: "/v#{@api_version}/search/", query: "q=#{fielded_query(fields)}")
  end

  def fielded_query(fields)
    fields.to_a.map do |tuple|
      "#{tuple.first}:(\"#{tuple.last}\")"
    end.join("+AND+")
  end
end
