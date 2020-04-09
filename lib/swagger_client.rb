=begin
#ORCID Member

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/activities_summary_v3_0'
require 'swagger_client/models/address_v3_0'
require 'swagger_client/models/addresses_v3_0'
require 'swagger_client/models/affiliation_group_v3_0'
require 'swagger_client/models/affiliation_group_v3_0_distinction_summary_v3_0'
require 'swagger_client/models/affiliation_group_v3_0_education_summary_v3_0'
require 'swagger_client/models/affiliation_group_v3_0_employment_summary_v3_0'
require 'swagger_client/models/affiliation_group_v3_0_invited_position_summary_v3_0'
require 'swagger_client/models/affiliation_group_v3_0_membership_summary_v3_0'
require 'swagger_client/models/affiliation_group_v3_0_qualification_summary_v3_0'
require 'swagger_client/models/affiliation_group_v3_0_service_summary_v3_0'
require 'swagger_client/models/affiliation_summary_v3_0'
require 'swagger_client/models/amount_v3_0'
require 'swagger_client/models/authorization_url_v3_0'
require 'swagger_client/models/biography_v3_0'
require 'swagger_client/models/bulk_element'
require 'swagger_client/models/citation'
require 'swagger_client/models/client_summary'
require 'swagger_client/models/completion_date_v3_0'
require 'swagger_client/models/contributor_attributes_v3_0'
require 'swagger_client/models/contributor_email_v3_0'
require 'swagger_client/models/contributor_orcid_v3_0'
require 'swagger_client/models/contributor_v3_0'
require 'swagger_client/models/country_v3_0'
require 'swagger_client/models/created_date_v3_0'
require 'swagger_client/models/credit_name_v3_0'
require 'swagger_client/models/currency'
require 'swagger_client/models/day_v3_0'
require 'swagger_client/models/deactivation_date_v3_0'
require 'swagger_client/models/disambiguated_organization_v3_0'
require 'swagger_client/models/distinction_summary_v3_0'
require 'swagger_client/models/distinction_v3_0'
require 'swagger_client/models/distinctions_summary_v3_0'
require 'swagger_client/models/education_summary_v3_0'
require 'swagger_client/models/education_v3_0'
require 'swagger_client/models/educations_summary_v3_0'
require 'swagger_client/models/email_v3_0'
require 'swagger_client/models/emails_v3_0'
require 'swagger_client/models/employment_summary_v3_0'
require 'swagger_client/models/employment_summary_container_v3_0.rb'
require 'swagger_client/models/employment_v3_0'
require 'swagger_client/models/employments_summary_v3_0'
require 'swagger_client/models/external_idv3_0'
require 'swagger_client/models/external_i_ds_v3_0'
require 'swagger_client/models/family_name_v3_0'
require 'swagger_client/models/funding_contributor_attributes_v3_0'
require 'swagger_client/models/funding_contributor_v3_0'
require 'swagger_client/models/funding_contributors_v3_0'
require 'swagger_client/models/funding_group_v3_0'
require 'swagger_client/models/funding_summary_v3_0'
require 'swagger_client/models/funding_title_v3_0'
require 'swagger_client/models/funding_v3_0'
require 'swagger_client/models/fundings_v3_0'
require 'swagger_client/models/fuzzy_date_v3_0'
require 'swagger_client/models/given_names_v3_0'
require 'swagger_client/models/group_id_record'
require 'swagger_client/models/group_id_records'
require 'swagger_client/models/history_v3_0'
require 'swagger_client/models/invited_position_summary_v3_0'
require 'swagger_client/models/invited_position_v3_0'
require 'swagger_client/models/invited_positions_v3_0'
require 'swagger_client/models/item_v3_0'
require 'swagger_client/models/items_v3_0'
require 'swagger_client/models/keyword_v3_0'
require 'swagger_client/models/keywords_v3_0'
require 'swagger_client/models/last_modified_date_v3_0'
require 'swagger_client/models/membership_summary_v3_0'
require 'swagger_client/models/membership_v3_0'
require 'swagger_client/models/memberships_v3_0'
require 'swagger_client/models/month_v3_0'
require 'swagger_client/models/name_v3_0'
require 'swagger_client/models/notification'
require 'swagger_client/models/notification_permission_v3_0'
require 'swagger_client/models/orcid_identifier_v3_0'
require 'swagger_client/models/organization_address_v3_0'
require 'swagger_client/models/organization_defined_funding_sub_type_v3_0'
require 'swagger_client/models/organization_v3_0'
require 'swagger_client/models/other_name_v3_0'
require 'swagger_client/models/other_names_v3_0'
require 'swagger_client/models/peer_review_duplicate_group_v3_0'
require 'swagger_client/models/peer_review_group_v3_0'
require 'swagger_client/models/peer_review_summary_v3_0'
require 'swagger_client/models/peer_review_v3_0'
require 'swagger_client/models/peer_reviews_v3_0'
require 'swagger_client/models/person_external_identifier_v3_0'
require 'swagger_client/models/person_external_identifiers_v3_0'
require 'swagger_client/models/person_v3_0'
require 'swagger_client/models/personal_details_v3_0'
require 'swagger_client/models/preferences_v3_0'
require 'swagger_client/models/publication_date_v3_0'
require 'swagger_client/models/qualification_summary_v3_0'
require 'swagger_client/models/qualification_v3_0'
require 'swagger_client/models/qualifications_v3_0'
require 'swagger_client/models/record_v3_0'
require 'swagger_client/models/research_resource_group_v3_0'
require 'swagger_client/models/research_resource_hosts_v3_0'
require 'swagger_client/models/research_resource_item_v3_0'
require 'swagger_client/models/research_resource_proposal_v3_0'
require 'swagger_client/models/research_resource_summary_v3_0'
require 'swagger_client/models/research_resource_title_v3_0'
require 'swagger_client/models/research_resource_v3_0'
require 'swagger_client/models/research_resources_v3_0'
require 'swagger_client/models/researcher_url_v3_0'
require 'swagger_client/models/researcher_urls_v3_0'
require 'swagger_client/models/result_v3_0'
require 'swagger_client/models/search_v3_0'
require 'swagger_client/models/service_summary_v3_0'
require 'swagger_client/models/service_v3_0'
require 'swagger_client/models/services_v3_0'
require 'swagger_client/models/source_client_id_v3_0'
require 'swagger_client/models/source_name_v3_0'
require 'swagger_client/models/source_orcid_v3_0'
require 'swagger_client/models/source_v3_0'
require 'swagger_client/models/subject_name_v3_0'
require 'swagger_client/models/submission_date_v3_0'
require 'swagger_client/models/subtitle_v3_0'
require 'swagger_client/models/title_v3_0'
require 'swagger_client/models/transient_error'
require 'swagger_client/models/transient_non_empty_string'
require 'swagger_client/models/translated_title_v3_0'
require 'swagger_client/models/url_v3_0'
require 'swagger_client/models/work_bulk_v3_0'
require 'swagger_client/models/work_contributors_v3_0'
require 'swagger_client/models/work_group_v3_0'
require 'swagger_client/models/work_summary_v3_0'
require 'swagger_client/models/work_title_v3_0'
require 'swagger_client/models/work_v3_0'
require 'swagger_client/models/works_summary_v3_0'
require 'swagger_client/models/year_v3_0'

# APIs
require 'swagger_client/api/development_member_apiv30_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
