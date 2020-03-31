module OrcidApi
  class AccessToken
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
    # Net::HTTP.start(url.host, url.port, use_ssl: true) do |http|
    #   req = Net::HTTP::Get.new(url)
    #   req["Content-type"] = "application/vnd.orcid+json"
    #   req["Authorization type"] = "Bearer"
    #   req["Access token"] = token
    #
    #   result = http.request(req)
    #   binding.pry
    # end
    # result
  end

