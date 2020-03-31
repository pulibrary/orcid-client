module OrcidApi
  class AccessToken

    # do a Net::HTTP request to fetch a token
    # Get a brand new token
    def self.fetch(client_id:, client_secret:)
      # https://orcid.org/oauth/token
      #   METHOD: POST
      #     HEADER: accept:application/json
      #       DATA:
      #             client_id=[Your client ID]
      #           client_secret=[Your client secret]
      #               grant_type=client_credentials
      #                   scope=/read-public
      Net::HTTP.start(url.host, url.port, use_ssl: true) do |http|
        req = Net::HTTP::Post.new(url)
        req["Accept"] = "application/json"
        data = {
          "client_id" => client_id,
          "client_secret" => client_secret,
          "grant_type" => "client_credentials",
          "scope" => "/read-public"
        }
        req.set_form_data(data)

        result = http.post(req)
      end
      # result
    end
  end

  def url
    @url ||= URI::HTTPS.build(host: token_base_url, path: "/oauth/token")
  end

  def token_base_url
    OrcidApi.config[:token_base_url]
  end

end
