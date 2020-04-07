# frozen_string_literal: true

SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = OrcidApi.config[:token]
  config.host = OrcidApi.config[:api_url]
end
