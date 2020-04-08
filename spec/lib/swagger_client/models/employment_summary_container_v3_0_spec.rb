require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::EmploymentSummaryContainerV30
# Please update as you see appropriate
describe 'EmploymentSummaryContainerV30' do
  before do
    # run before each test
    @instance = SwaggerClient::EmploymentSummaryContainerV30.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmploymentSummaryContainerV30' do
    it 'should create an instance of EmploymentSummaryContainerV30' do
      expect(@instance).to be_instance_of(SwaggerClient::EmploymentSummaryContainerV30)
    end
  end

  describe 'test attribute "employment_summary"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
