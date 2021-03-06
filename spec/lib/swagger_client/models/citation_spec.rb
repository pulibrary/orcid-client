=begin
#ORCID Member

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::Citation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Citation' do
  before do
    # run before each test
    @instance = SwaggerClient::Citation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Citation' do
    it 'should create an instance of Citation' do
      expect(@instance).to be_instance_of(SwaggerClient::Citation)
    end
  end
  describe 'test attribute "citation_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FORMATTED_UNSPECIFIED", "BIBTEX", "FORMATTED_APA", "FORMATTED_HARVARD", "FORMATTED_IEEE", "FORMATTED_MLA", "FORMATTED_VANCOUVER", "FORMATTED_CHICAGO", "RIS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.citation_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "citation_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
