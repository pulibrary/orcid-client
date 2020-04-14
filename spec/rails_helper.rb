# frozen_string_literal: true
ENV["RACK_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)
require "rspec/rails"
Dir[Rails.root.join("spec", "support", "**", "*.rb")].sort.each { |file| require file }

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
end
