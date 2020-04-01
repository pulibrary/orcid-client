# frozen_string_literal: true

module OrcidApi
  # Service class to generate a new Orcid API token.
  # Tokens are long lived, and should be set using the TOKEN env variable.
  # Use this service if our credentials are changed or the token is lost.
  class AccessToken
    attr_reader :client_id, :client_secret
    def initialize(client_id:, client_secret:)
      @client_id = client_id
      @client_secret = client_secret
    end

    # Get a brand new token
    def fetch
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
        body = http.request(req).body
        JSON.parse(body)["access_token"]
      end
    end

    private

      def token_base_url
        OrcidApi.config[:token_base_url]
      end

      def url
        @url ||= URI::HTTPS.build(host: token_base_url, path: "/oauth/token")
      end
  end
end
