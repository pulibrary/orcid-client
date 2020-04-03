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

# Unit tests for SwaggerClient::ContributorAttributesV30
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContributorAttributesV30' do
  before do
    # run before each test
    @instance = SwaggerClient::ContributorAttributesV30.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContributorAttributesV30' do
    it 'should create an instance of ContributorAttributesV30' do
      expect(@instance).to be_instance_of(SwaggerClient::ContributorAttributesV30)
    end
  end
  describe 'test attribute "contributor_sequence"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FIRST", "ADDITIONAL"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.contributor_sequence = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "contributor_role"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AUTHOR", "ASSIGNEE", "EDITOR", "CHAIR_OR_TRANSLATOR", "CO_INVESTIGATOR", "CO_INVENTOR", "GRADUATE_STUDENT", "OTHER_INVENTOR", "PRINCIPAL_INVESTIGATOR", "POSTDOCTORAL_RESEARCHER", "SUPPORT_STAFF"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.contributor_role = value }.not_to raise_error
      # end
    end
  end

end
