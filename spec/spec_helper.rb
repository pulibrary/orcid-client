# frozen_string_literal: true
require "simplecov"
require "swagger_client"
require "webmock/rspec"

SimpleCov.start do
  add_group "OrcidAPI", "lib"
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Reset swagger client configuration before each spec
  # (individual tests make changes and do not clean up after themselves)
  config.before do
    SwaggerClient.configure do |c|
      c.access_token = OrcidApi.config[:token]
      c.base_path = "/"
      c.host = OrcidApi.config[:api_base_url]
    end
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
