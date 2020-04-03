# SwaggerClient::MemberAPIV21Api

All URIs are relative to *https://api.orcid.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_permission_notification_v21**](MemberAPIV21Api.md#add_permission_notification_v21) | **POST** /v2.1/{orcid}/notification-permission | Add a notification
[**create_address_v21**](MemberAPIV21Api.md#create_address_v21) | **POST** /v2.1/{orcid}/address | Add an address
[**create_education_v21**](MemberAPIV21Api.md#create_education_v21) | **POST** /v2.1/{orcid}/education | Create an Education
[**create_employment_v21**](MemberAPIV21Api.md#create_employment_v21) | **POST** /v2.1/{orcid}/employment | Create an Employment
[**create_external_identifier_v21**](MemberAPIV21Api.md#create_external_identifier_v21) | **POST** /v2.1/{orcid}/external-identifiers | Add external identifier
[**create_funding_v21**](MemberAPIV21Api.md#create_funding_v21) | **POST** /v2.1/{orcid}/funding | Create a Funding
[**create_group_id_record_v21**](MemberAPIV21Api.md#create_group_id_record_v21) | **POST** /v2.1/group-id-record | Create a Group
[**create_keyword_v21**](MemberAPIV21Api.md#create_keyword_v21) | **POST** /v2.1/{orcid}/keywords | Add keyword
[**create_other_name_v21**](MemberAPIV21Api.md#create_other_name_v21) | **POST** /v2.1/{orcid}/other-names | Add other name
[**create_peer_review_v21**](MemberAPIV21Api.md#create_peer_review_v21) | **POST** /v2.1/{orcid}/peer-review | Create a Peer Review
[**create_researcher_url_v21**](MemberAPIV21Api.md#create_researcher_url_v21) | **POST** /v2.1/{orcid}/researcher-urls | Add a new researcher url for an ORCID ID
[**create_work_v21**](MemberAPIV21Api.md#create_work_v21) | **POST** /v2.1/{orcid}/work | Create a Work
[**create_works_v21**](MemberAPIV21Api.md#create_works_v21) | **POST** /v2.1/{orcid}/works | Create a list of Work
[**delete_address_v21**](MemberAPIV21Api.md#delete_address_v21) | **DELETE** /v2.1/{orcid}/address/{putCode} | Delete an address
[**delete_education_v21**](MemberAPIV21Api.md#delete_education_v21) | **DELETE** /v2.1/{orcid}/education/{putCode} | Delete an Education
[**delete_employment_v21**](MemberAPIV21Api.md#delete_employment_v21) | **DELETE** /v2.1/{orcid}/employment/{putCode} | Delete an Employment
[**delete_external_identifier_v21**](MemberAPIV21Api.md#delete_external_identifier_v21) | **DELETE** /v2.1/{orcid}/external-identifiers/{putCode} | Delete external identifier
[**delete_funding_v21**](MemberAPIV21Api.md#delete_funding_v21) | **DELETE** /v2.1/{orcid}/funding/{putCode} | Delete a Funding
[**delete_group_id_record_v21**](MemberAPIV21Api.md#delete_group_id_record_v21) | **DELETE** /v2.1/group-id-record/{putCode} | Delete a Group
[**delete_keyword_v21**](MemberAPIV21Api.md#delete_keyword_v21) | **DELETE** /v2.1/{orcid}/keywords/{putCode} | Delete keyword
[**delete_other_name_v21**](MemberAPIV21Api.md#delete_other_name_v21) | **DELETE** /v2.1/{orcid}/other-names/{putCode} | Delete other name
[**delete_peer_review_v21**](MemberAPIV21Api.md#delete_peer_review_v21) | **DELETE** /v2.1/{orcid}/peer-review/{putCode} | Delete a Peer Review
[**delete_researcher_url_v21**](MemberAPIV21Api.md#delete_researcher_url_v21) | **DELETE** /v2.1/{orcid}/researcher-urls/{putCode} | Delete one researcher url from an ORCID ID
[**delete_work_v21**](MemberAPIV21Api.md#delete_work_v21) | **DELETE** /v2.1/{orcid}/work/{putCode} | Delete a Work
[**edit_address_v21**](MemberAPIV21Api.md#edit_address_v21) | **PUT** /v2.1/{orcid}/address/{putCode} | Edit an address
[**edit_external_identifier_v21**](MemberAPIV21Api.md#edit_external_identifier_v21) | **PUT** /v2.1/{orcid}/external-identifiers/{putCode} | Edit external identifier
[**edit_keyword_v21**](MemberAPIV21Api.md#edit_keyword_v21) | **PUT** /v2.1/{orcid}/keywords/{putCode} | Edit keyword
[**edit_other_name_v21**](MemberAPIV21Api.md#edit_other_name_v21) | **PUT** /v2.1/{orcid}/other-names/{putCode} | Edit other name
[**edit_researcher_url_v21**](MemberAPIV21Api.md#edit_researcher_url_v21) | **PUT** /v2.1/{orcid}/researcher-urls/{putCode} | Edits researcher url for an ORCID ID
[**flag_as_archived_permission_notification_v21**](MemberAPIV21Api.md#flag_as_archived_permission_notification_v21) | **DELETE** /v2.1/{orcid}/notification-permission/{id} | Archive a notification
[**search_by_query_v21**](MemberAPIV21Api.md#search_by_query_v21) | **GET** /v2.1/search | Search records
[**update_education_v21**](MemberAPIV21Api.md#update_education_v21) | **PUT** /v2.1/{orcid}/education/{putCode} | Update an Education
[**update_employment_v21**](MemberAPIV21Api.md#update_employment_v21) | **PUT** /v2.1/{orcid}/employment/{putCode} | Update an Employment
[**update_funding_v21**](MemberAPIV21Api.md#update_funding_v21) | **PUT** /v2.1/{orcid}/funding/{putCode} | Update a Funding
[**update_group_id_record_v21**](MemberAPIV21Api.md#update_group_id_record_v21) | **PUT** /v2.1/group-id-record/{putCode} | Update a Group
[**update_peer_review_v21**](MemberAPIV21Api.md#update_peer_review_v21) | **PUT** /v2.1/{orcid}/peer-review/{putCode} | Update a Peer Review
[**update_work_v21**](MemberAPIV21Api.md#update_work_v21) | **PUT** /v2.1/{orcid}/work/{putCode} | Update a Work
[**view_activities_v21**](MemberAPIV21Api.md#view_activities_v21) | **GET** /v2.1/{orcid}/activities | Fetch all activities
[**view_address_v21**](MemberAPIV21Api.md#view_address_v21) | **GET** /v2.1/{orcid}/address/{putCode} | Fetch an address
[**view_addresses_v21**](MemberAPIV21Api.md#view_addresses_v21) | **GET** /v2.1/{orcid}/address | Fetch all addresses of a profile
[**view_biography_v21**](MemberAPIV21Api.md#view_biography_v21) | **GET** /v2.1/{orcid}/biography | Get biography details
[**view_client_v21**](MemberAPIV21Api.md#view_client_v21) | **GET** /v2.1/client/{client_id} | Fetch client details
[**view_education_summary_v21**](MemberAPIV21Api.md#view_education_summary_v21) | **GET** /v2.1/{orcid}/education/summary/{putCode} | Fetch an Education summary
[**view_education_v21**](MemberAPIV21Api.md#view_education_v21) | **GET** /v2.1/{orcid}/education/{putCode} | Fetch an Education
[**view_educations_v21**](MemberAPIV21Api.md#view_educations_v21) | **GET** /v2.1/{orcid}/educations | Fetch all educations
[**view_emails_v21**](MemberAPIV21Api.md#view_emails_v21) | **GET** /v2.1/{orcid}/email | Fetch all emails for an ORCID ID
[**view_employment_summary_v21**](MemberAPIV21Api.md#view_employment_summary_v21) | **GET** /v2.1/{orcid}/employment/summary/{putCode} | Fetch an Employment Summary
[**view_employment_v21**](MemberAPIV21Api.md#view_employment_v21) | **GET** /v2.1/{orcid}/employment/{putCode} | Fetch an Employment
[**view_employments_v21**](MemberAPIV21Api.md#view_employments_v21) | **GET** /v2.1/{orcid}/employments | Fetch all employments
[**view_external_identifier_v21**](MemberAPIV21Api.md#view_external_identifier_v21) | **GET** /v2.1/{orcid}/external-identifiers/{putCode} | Fetch external identifier
[**view_external_identifiers_v21**](MemberAPIV21Api.md#view_external_identifiers_v21) | **GET** /v2.1/{orcid}/external-identifiers | Fetch external identifiers
[**view_funding_summary_v21**](MemberAPIV21Api.md#view_funding_summary_v21) | **GET** /v2.1/{orcid}/funding/summary/{putCode} | Fetch a Funding Summary
[**view_funding_v21**](MemberAPIV21Api.md#view_funding_v21) | **GET** /v2.1/{orcid}/funding/{putCode} | Fetch a Funding
[**view_fundings_v21**](MemberAPIV21Api.md#view_fundings_v21) | **GET** /v2.1/{orcid}/fundings | Fetch all fundings
[**view_group_id_record_v21**](MemberAPIV21Api.md#view_group_id_record_v21) | **GET** /v2.1/group-id-record/{putCode} | Fetch a Group
[**view_group_id_records_v21**](MemberAPIV21Api.md#view_group_id_records_v21) | **GET** /v2.1/group-id-record | Fetch Groups
[**view_keyword_v21**](MemberAPIV21Api.md#view_keyword_v21) | **GET** /v2.1/{orcid}/keywords/{putCode} | Fetch keyword
[**view_keywords_v21**](MemberAPIV21Api.md#view_keywords_v21) | **GET** /v2.1/{orcid}/keywords | Fetch keywords
[**view_other_name_v21**](MemberAPIV21Api.md#view_other_name_v21) | **GET** /v2.1/{orcid}/other-names/{putCode} | Fetch Other name
[**view_other_names_v21**](MemberAPIV21Api.md#view_other_names_v21) | **GET** /v2.1/{orcid}/other-names | Fetch Other names
[**view_peer_review_summary_v21**](MemberAPIV21Api.md#view_peer_review_summary_v21) | **GET** /v2.1/{orcid}/peer-review/summary/{putCode} | Fetch a Peer Review Summary
[**view_peer_review_v21**](MemberAPIV21Api.md#view_peer_review_v21) | **GET** /v2.1/{orcid}/peer-review/{putCode} | Fetch a Peer Review
[**view_peer_reviews_v21**](MemberAPIV21Api.md#view_peer_reviews_v21) | **GET** /v2.1/{orcid}/peer-reviews | Fetch all peer reviews
[**view_permission_notification_v21**](MemberAPIV21Api.md#view_permission_notification_v21) | **GET** /v2.1/{orcid}/notification-permission/{id} | Fetch a notification by id
[**view_person_v21**](MemberAPIV21Api.md#view_person_v21) | **GET** /v2.1/{orcid}/person | Fetch person details
[**view_personal_details_v21**](MemberAPIV21Api.md#view_personal_details_v21) | **GET** /v2.1/{orcid}/personal-details | Fetch personal details for an ORCID ID
[**view_record_v21**](MemberAPIV21Api.md#view_record_v21) | **GET** /v2.1/{orcid} | Fetch record details
[**view_researcher_url_v21**](MemberAPIV21Api.md#view_researcher_url_v21) | **GET** /v2.1/{orcid}/researcher-urls/{putCode} | Fetch one researcher url for an ORCID ID
[**view_researcher_urls_v21**](MemberAPIV21Api.md#view_researcher_urls_v21) | **GET** /v2.1/{orcid}/researcher-urls | Fetch all researcher urls for an ORCID ID
[**view_specified_works_v21**](MemberAPIV21Api.md#view_specified_works_v21) | **GET** /v2.1/{orcid}/works/{putCodes} | Fetch specified works
[**view_work_summary_v21**](MemberAPIV21Api.md#view_work_summary_v21) | **GET** /v2.1/{orcid}/work/summary/{putCode} | Fetch a Work Summary
[**view_work_v21**](MemberAPIV21Api.md#view_work_v21) | **GET** /v2.1/{orcid}/work/{putCode} | Fetch a Work
[**view_works_v21**](MemberAPIV21Api.md#view_works_v21) | **GET** /v2.1/{orcid}/works | Fetch all works


# **add_permission_notification_v21**
> String add_permission_notification_v21(orcid, opts)

Add a notification



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::NotificationPermissionV20.new # NotificationPermissionV20 | 
}

begin
  #Add a notification
  result = api_instance.add_permission_notification_v21(orcid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->add_permission_notification_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**NotificationPermissionV20**](NotificationPermissionV20.md)|  | [optional] 

### Return type

**String**

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_address_v21**
> create_address_v21(orcid, opts)

Add an address



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::AddressV20.new # AddressV20 | 
}

begin
  #Add an address
  api_instance.create_address_v21(orcid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_address_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**AddressV20**](AddressV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_education_v21**
> String create_education_v21(orcid, opts)

Create an Education



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::EducationV20.new # EducationV20 | 
}

begin
  #Create an Education
  result = api_instance.create_education_v21(orcid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_education_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**EducationV20**](EducationV20.md)|  | [optional] 

### Return type

**String**

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_employment_v21**
> String create_employment_v21(orcid, opts)

Create an Employment



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::EmploymentV20.new # EmploymentV20 | 
}

begin
  #Create an Employment
  result = api_instance.create_employment_v21(orcid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_employment_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**EmploymentV20**](EmploymentV20.md)|  | [optional] 

### Return type

**String**

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_external_identifier_v21**
> create_external_identifier_v21(orcid, opts)

Add external identifier



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::PersonExternalIdentifierV20.new # PersonExternalIdentifierV20 | 
}

begin
  #Add external identifier
  api_instance.create_external_identifier_v21(orcid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_external_identifier_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**PersonExternalIdentifierV20**](PersonExternalIdentifierV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_funding_v21**
> String create_funding_v21(orcid, opts)

Create a Funding



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::FundingV20.new # FundingV20 | 
}

begin
  #Create a Funding
  result = api_instance.create_funding_v21(orcid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_funding_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**FundingV20**](FundingV20.md)|  | [optional] 

### Return type

**String**

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_group_id_record_v21**
> create_group_id_record_v21(opts)

Create a Group



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

opts = { 
  body: SwaggerClient::GroupIdRecord.new # GroupIdRecord | 
}

begin
  #Create a Group
  api_instance.create_group_id_record_v21(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_group_id_record_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GroupIdRecord**](GroupIdRecord.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_keyword_v21**
> create_keyword_v21(orcid, opts)

Add keyword



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::KeywordV20.new # KeywordV20 | 
}

begin
  #Add keyword
  api_instance.create_keyword_v21(orcid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_keyword_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**KeywordV20**](KeywordV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_other_name_v21**
> create_other_name_v21(orcid, opts)

Add other name



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::OtherNameV20.new # OtherNameV20 | 
}

begin
  #Add other name
  api_instance.create_other_name_v21(orcid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_other_name_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**OtherNameV20**](OtherNameV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_peer_review_v21**
> String create_peer_review_v21(orcid, opts)

Create a Peer Review



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::PeerReviewV20.new # PeerReviewV20 | 
}

begin
  #Create a Peer Review
  result = api_instance.create_peer_review_v21(orcid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_peer_review_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**PeerReviewV20**](PeerReviewV20.md)|  | [optional] 

### Return type

**String**

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_researcher_url_v21**
> create_researcher_url_v21(orcid, opts)

Add a new researcher url for an ORCID ID



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::ResearcherUrlV20.new # ResearcherUrlV20 | 
}

begin
  #Add a new researcher url for an ORCID ID
  api_instance.create_researcher_url_v21(orcid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_researcher_url_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**ResearcherUrlV20**](ResearcherUrlV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_work_v21**
> String create_work_v21(orcid, opts)

Create a Work



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::WorkV20.new # WorkV20 | 
}

begin
  #Create a Work
  result = api_instance.create_work_v21(orcid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_work_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**WorkV20**](WorkV20.md)|  | [optional] 

### Return type

**String**

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **create_works_v21**
> create_works_v21(orcid, opts)

Create a list of Work



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

opts = { 
  body: SwaggerClient::WorkBulkV20.new # WorkBulkV20 | 
}

begin
  #Create a list of Work
  api_instance.create_works_v21(orcid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->create_works_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **body** | [**WorkBulkV20**](WorkBulkV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_address_v21**
> delete_address_v21(orcid, put_code)

Delete an address



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete an address
  api_instance.delete_address_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_address_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_education_v21**
> delete_education_v21(orcid, put_code)

Delete an Education



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete an Education
  api_instance.delete_education_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_education_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_employment_v21**
> delete_employment_v21(orcid, put_code)

Delete an Employment



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete an Employment
  api_instance.delete_employment_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_employment_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_external_identifier_v21**
> delete_external_identifier_v21(orcid, put_code)

Delete external identifier



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete external identifier
  api_instance.delete_external_identifier_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_external_identifier_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_funding_v21**
> delete_funding_v21(orcid, put_code)

Delete a Funding



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete a Funding
  api_instance.delete_funding_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_funding_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_group_id_record_v21**
> delete_group_id_record_v21(put_code)

Delete a Group



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

put_code = 'put_code_example' # String | 


begin
  #Delete a Group
  api_instance.delete_group_id_record_v21(put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_group_id_record_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_keyword_v21**
> delete_keyword_v21(orcid, put_code)

Delete keyword



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete keyword
  api_instance.delete_keyword_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_keyword_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_other_name_v21**
> delete_other_name_v21(orcid, put_code)

Delete other name



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete other name
  api_instance.delete_other_name_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_other_name_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_peer_review_v21**
> delete_peer_review_v21(orcid, put_code)

Delete a Peer Review



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete a Peer Review
  api_instance.delete_peer_review_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_peer_review_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_researcher_url_v21**
> delete_researcher_url_v21(orcid, put_code)

Delete one researcher url from an ORCID ID



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete one researcher url from an ORCID ID
  api_instance.delete_researcher_url_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_researcher_url_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **delete_work_v21**
> delete_work_v21(orcid, put_code)

Delete a Work



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Delete a Work
  api_instance.delete_work_v21(orcid, put_code)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->delete_work_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **edit_address_v21**
> edit_address_v21(orcid, put_code, opts)

Edit an address



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::AddressV20.new # AddressV20 | 
}

begin
  #Edit an address
  api_instance.edit_address_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->edit_address_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**AddressV20**](AddressV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **edit_external_identifier_v21**
> edit_external_identifier_v21(orcid, put_code, opts)

Edit external identifier



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::PersonExternalIdentifierV20.new # PersonExternalIdentifierV20 | 
}

begin
  #Edit external identifier
  api_instance.edit_external_identifier_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->edit_external_identifier_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**PersonExternalIdentifierV20**](PersonExternalIdentifierV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **edit_keyword_v21**
> edit_keyword_v21(orcid, put_code, opts)

Edit keyword



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::KeywordV20.new # KeywordV20 | 
}

begin
  #Edit keyword
  api_instance.edit_keyword_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->edit_keyword_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**KeywordV20**](KeywordV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **edit_other_name_v21**
> edit_other_name_v21(orcid, put_code, opts)

Edit other name



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::OtherNameV20.new # OtherNameV20 | 
}

begin
  #Edit other name
  api_instance.edit_other_name_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->edit_other_name_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**OtherNameV20**](OtherNameV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **edit_researcher_url_v21**
> edit_researcher_url_v21(orcid, put_code, opts)

Edits researcher url for an ORCID ID



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::ResearcherUrlV20.new # ResearcherUrlV20 | 
}

begin
  #Edits researcher url for an ORCID ID
  api_instance.edit_researcher_url_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->edit_researcher_url_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**ResearcherUrlV20**](ResearcherUrlV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **flag_as_archived_permission_notification_v21**
> Notification flag_as_archived_permission_notification_v21(orcid, id)

Archive a notification



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

id = 789 # Integer | 


begin
  #Archive a notification
  result = api_instance.flag_as_archived_permission_notification_v21(orcid, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->flag_as_archived_permission_notification_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **id** | **Integer**|  | 

### Return type

[**Notification**](Notification.md)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **search_by_query_v21**
> SearchV20 search_by_query_v21(opts)

Search records



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

opts = { 
  q: 'q_example' # String | 
}

begin
  #Search records
  result = api_instance.search_by_query_v21(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->search_by_query_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 

### Return type

[**SearchV20**](SearchV20.md)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **update_education_v21**
> update_education_v21(orcid, put_code, opts)

Update an Education



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::EducationV20.new # EducationV20 | 
}

begin
  #Update an Education
  api_instance.update_education_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->update_education_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**EducationV20**](EducationV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **update_employment_v21**
> update_employment_v21(orcid, put_code, opts)

Update an Employment



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::EmploymentV20.new # EmploymentV20 | 
}

begin
  #Update an Employment
  api_instance.update_employment_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->update_employment_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**EmploymentV20**](EmploymentV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **update_funding_v21**
> update_funding_v21(orcid, put_code, opts)

Update a Funding



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::FundingV20.new # FundingV20 | 
}

begin
  #Update a Funding
  api_instance.update_funding_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->update_funding_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**FundingV20**](FundingV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **update_group_id_record_v21**
> update_group_id_record_v21(put_code, opts)

Update a Group



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::GroupIdRecord.new # GroupIdRecord | 
}

begin
  #Update a Group
  api_instance.update_group_id_record_v21(put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->update_group_id_record_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **put_code** | **String**|  | 
 **body** | [**GroupIdRecord**](GroupIdRecord.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **update_peer_review_v21**
> update_peer_review_v21(orcid, put_code, opts)

Update a Peer Review



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::PeerReviewV20.new # PeerReviewV20 | 
}

begin
  #Update a Peer Review
  api_instance.update_peer_review_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->update_peer_review_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**PeerReviewV20**](PeerReviewV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **update_work_v21**
> update_work_v21(orcid, put_code, opts)

Update a Work



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 

opts = { 
  body: SwaggerClient::WorkV20.new # WorkV20 | 
}

begin
  #Update a Work
  api_instance.update_work_v21(orcid, put_code, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->update_work_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 
 **body** | [**WorkV20**](WorkV20.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_activities_v21**
> ActivitiesSummaryV20 view_activities_v21(orcid)

Fetch all activities



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all activities
  result = api_instance.view_activities_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_activities_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**ActivitiesSummaryV20**](ActivitiesSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_address_v21**
> AddressV20 view_address_v21(orcid, put_code)

Fetch an address



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch an address
  result = api_instance.view_address_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_address_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**AddressV20**](AddressV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_addresses_v21**
> AddressesV20 view_addresses_v21(orcid)

Fetch all addresses of a profile



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all addresses of a profile
  result = api_instance.view_addresses_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_addresses_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**AddressesV20**](AddressesV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_biography_v21**
> view_biography_v21(orcid)

Get biography details



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Get biography details
  api_instance.view_biography_v21(orcid)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_biography_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_client_v21**
> ClientSummary view_client_v21(client_id)

Fetch client details



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

client_id = 'client_id_example' # String | 


begin
  #Fetch client details
  result = api_instance.view_client_v21(client_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_client_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**|  | 

### Return type

[**ClientSummary**](ClientSummary.md)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_education_summary_v21**
> EducationSummaryV20 view_education_summary_v21(orcid, put_code)

Fetch an Education summary



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch an Education summary
  result = api_instance.view_education_summary_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_education_summary_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**EducationSummaryV20**](EducationSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_education_v21**
> EducationV20 view_education_v21(orcid, put_code)

Fetch an Education



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch an Education
  result = api_instance.view_education_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_education_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**EducationV20**](EducationV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_educations_v21**
> EducationsSummaryV20 view_educations_v21(orcid)

Fetch all educations



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all educations
  result = api_instance.view_educations_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_educations_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**EducationsSummaryV20**](EducationsSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_emails_v21**
> EmailsV20 view_emails_v21(orcid)

Fetch all emails for an ORCID ID



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all emails for an ORCID ID
  result = api_instance.view_emails_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_emails_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**EmailsV20**](EmailsV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_employment_summary_v21**
> EmploymentSummaryV20 view_employment_summary_v21(orcid, put_code)

Fetch an Employment Summary



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch an Employment Summary
  result = api_instance.view_employment_summary_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_employment_summary_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**EmploymentSummaryV20**](EmploymentSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_employment_v21**
> EmploymentV20 view_employment_v21(orcid, put_code)

Fetch an Employment



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch an Employment
  result = api_instance.view_employment_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_employment_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**EmploymentV20**](EmploymentV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_employments_v21**
> EmploymentsSummaryV20 view_employments_v21(orcid)

Fetch all employments



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all employments
  result = api_instance.view_employments_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_employments_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**EmploymentsSummaryV20**](EmploymentsSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_external_identifier_v21**
> PersonExternalIdentifierV20 view_external_identifier_v21(orcid, put_code)

Fetch external identifier



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch external identifier
  result = api_instance.view_external_identifier_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_external_identifier_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**PersonExternalIdentifierV20**](PersonExternalIdentifierV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_external_identifiers_v21**
> PersonExternalIdentifiersV20 view_external_identifiers_v21(orcid)

Fetch external identifiers



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch external identifiers
  result = api_instance.view_external_identifiers_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_external_identifiers_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**PersonExternalIdentifiersV20**](PersonExternalIdentifiersV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_funding_summary_v21**
> FundingSummaryV20 view_funding_summary_v21(orcid, put_code)

Fetch a Funding Summary



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch a Funding Summary
  result = api_instance.view_funding_summary_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_funding_summary_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**FundingSummaryV20**](FundingSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_funding_v21**
> FundingV20 view_funding_v21(orcid, put_code)

Fetch a Funding



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch a Funding
  result = api_instance.view_funding_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_funding_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**FundingV20**](FundingV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_fundings_v21**
> FundingsV20 view_fundings_v21(orcid)

Fetch all fundings



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all fundings
  result = api_instance.view_fundings_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_fundings_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**FundingsV20**](FundingsV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_group_id_record_v21**
> GroupIdRecord view_group_id_record_v21(put_code)

Fetch a Group



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

put_code = 'put_code_example' # String | 


begin
  #Fetch a Group
  result = api_instance.view_group_id_record_v21(put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_group_id_record_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **put_code** | **String**|  | 

### Return type

[**GroupIdRecord**](GroupIdRecord.md)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_group_id_records_v21**
> GroupIdRecords view_group_id_records_v21(opts)

Fetch Groups



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

opts = { 
  page_size: '100', # String | 
  page: '1', # String | 
  name: 'name_example', # String | 
  group_id: 'group_id_example' # String | 
}

begin
  #Fetch Groups
  result = api_instance.view_group_id_records_v21(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_group_id_records_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_size** | **String**|  | [optional] [default to 100]
 **page** | **String**|  | [optional] [default to 1]
 **name** | **String**|  | [optional] 
 **group_id** | **String**|  | [optional] 

### Return type

[**GroupIdRecords**](GroupIdRecords.md)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_keyword_v21**
> KeywordV20 view_keyword_v21(orcid, put_code)

Fetch keyword



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch keyword
  result = api_instance.view_keyword_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_keyword_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**KeywordV20**](KeywordV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_keywords_v21**
> KeywordsV20 view_keywords_v21(orcid)

Fetch keywords



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch keywords
  result = api_instance.view_keywords_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_keywords_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**KeywordsV20**](KeywordsV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_other_name_v21**
> OtherNameV20 view_other_name_v21(orcid, put_code)

Fetch Other name



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch Other name
  result = api_instance.view_other_name_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_other_name_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**OtherNameV20**](OtherNameV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_other_names_v21**
> OtherNameV20 view_other_names_v21(orcid)

Fetch Other names



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch Other names
  result = api_instance.view_other_names_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_other_names_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**OtherNameV20**](OtherNameV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_peer_review_summary_v21**
> PeerReviewSummaryV20 view_peer_review_summary_v21(orcid, put_code)

Fetch a Peer Review Summary



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch a Peer Review Summary
  result = api_instance.view_peer_review_summary_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_peer_review_summary_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**PeerReviewSummaryV20**](PeerReviewSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_peer_review_v21**
> PeerReviewV20 view_peer_review_v21(orcid, put_code)

Fetch a Peer Review



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch a Peer Review
  result = api_instance.view_peer_review_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_peer_review_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**PeerReviewV20**](PeerReviewV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_peer_reviews_v21**
> PeerReviewsV20 view_peer_reviews_v21(orcid)

Fetch all peer reviews



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all peer reviews
  result = api_instance.view_peer_reviews_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_peer_reviews_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**PeerReviewsV20**](PeerReviewsV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_permission_notification_v21**
> Notification view_permission_notification_v21(orcid, id)

Fetch a notification by id



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_two_legs
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

id = 789 # Integer | 


begin
  #Fetch a notification by id
  result = api_instance.view_permission_notification_v21(orcid, id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_permission_notification_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **id** | **Integer**|  | 

### Return type

[**Notification**](Notification.md)

### Authorization

[orcid_two_legs](../README.md#orcid_two_legs)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_person_v21**
> PersonV20 view_person_v21(orcid)

Fetch person details



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch person details
  result = api_instance.view_person_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_person_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**PersonV20**](PersonV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_personal_details_v21**
> PersonalDetailsV20 view_personal_details_v21(orcid)

Fetch personal details for an ORCID ID



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch personal details for an ORCID ID
  result = api_instance.view_personal_details_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_personal_details_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**PersonalDetailsV20**](PersonalDetailsV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_record_v21**
> RecordV20 view_record_v21(orcid)

Fetch record details



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch record details
  result = api_instance.view_record_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_record_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**RecordV20**](RecordV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_researcher_url_v21**
> ResearcherUrlV20 view_researcher_url_v21(orcid, put_code)

Fetch one researcher url for an ORCID ID



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch one researcher url for an ORCID ID
  result = api_instance.view_researcher_url_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_researcher_url_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**ResearcherUrlV20**](ResearcherUrlV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **view_researcher_urls_v21**
> ResearcherUrlsV20 view_researcher_urls_v21(orcid)

Fetch all researcher urls for an ORCID ID



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all researcher urls for an ORCID ID
  result = api_instance.view_researcher_urls_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_researcher_urls_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**ResearcherUrlsV20**](ResearcherUrlsV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_specified_works_v21**
> WorkBulkV20 view_specified_works_v21(orcid, put_codes)

Fetch specified works



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_codes = 'put_codes_example' # String | 


begin
  #Fetch specified works
  result = api_instance.view_specified_works_v21(orcid, put_codes)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_specified_works_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_codes** | **String**|  | 

### Return type

[**WorkBulkV20**](WorkBulkV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_work_summary_v21**
> WorkSummaryV20 view_work_summary_v21(orcid, put_code)

Fetch a Work Summary



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch a Work Summary
  result = api_instance.view_work_summary_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_work_summary_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**WorkSummaryV20**](WorkSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_work_v21**
> WorkV20 view_work_v21(orcid, put_code)

Fetch a Work



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 

put_code = 'put_code_example' # String | 


begin
  #Fetch a Work
  result = api_instance.view_work_v21(orcid, put_code)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_work_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 
 **put_code** | **String**|  | 

### Return type

[**WorkV20**](WorkV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



# **view_works_v21**
> WorksSummaryV20 view_works_v21(orcid)

Fetch all works



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: orcid_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::MemberAPIV21Api.new

orcid = 'orcid_example' # String | 


begin
  #Fetch all works
  result = api_instance.view_works_v21(orcid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MemberAPIV21Api->view_works_v21: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orcid** | **String**|  | 

### Return type

[**WorksSummaryV20**](WorksSummaryV20.md)

### Authorization

[orcid_auth](../README.md#orcid_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.orcid+xml; qs=5, application/orcid+xml; qs=3, application/xml, application/vnd.orcid+json; qs=4, application/orcid+json; qs=2, application/json



