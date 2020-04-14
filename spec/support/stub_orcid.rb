# frozen_string_literal: true

module OrcidStubbing
  def stub_orcid(id:, fixture:)
    url = "https://pub.orcid.org/v3.0/#{id}"
    stub_orcid_query(url: url, fixture: fixture)
  end

  def stub_email(email:, rows:, start:, fixture:)
    stub_request(:get, "https://pub.orcid.org/v3.0/search?q=email:(%22#{email}%22)&rows=#{rows}&start=#{start}")
      .to_return(status: 200, body: fixture, headers: {})
  end

  def stub_name(given_name:, family_name:, rows:, start:, fixture:)
    stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)%20AND%20given-names:(%22#{given_name}%22)%20AND%20family-name:(%22#{family_name}%22)&rows=#{rows}&start=#{start}")
      .to_return(status: 200, body: fixture, headers: {})
  end

  def stub_institution(rows:, start:, fixture:)
    stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)%20OR%20grid-org-id:(%22grid.16750.35%22)%20OR%20ringgold-org-id:(%226740%22)&rows=#{rows}&start=#{start}")
      .to_return(status: 200, body: fixture, headers: {})
  end

  def stub_affiliation(rows:, start:, fixture:)
    stub_request(:get, "https://pub.orcid.org/v3.0/search?q=affiliation-org-name:(%22Princeton%20University%22)&start=#{start}&rows=#{rows}")
      .with(
        headers: {
          "Accept" => "application/vnd.orcid+json; qs=4",
          "Authorization type" => "Bearer",
          "Access token" => "test_token",
          "Content-Type" => "application/json"
        }
      )
      .to_return(status: 200, body: fixture, headers: {})
  end

  def stub_grid(rows:, start:, fixture:)
    stub_request(:get, "https://pub.orcid.org/v3.0/search?q=grid-org-id:(%22grid.16750.35%22)&rows=#{rows}&start=#{start}")
      .to_return(status: 200, body: fixture, headers: {})
  end

  def stub_ringgold(rows:, start:, fixture:)
        stub_request(:get, "https://pub.orcid.org/v3.0/search?q=ringgold-org-id:(%226740%22)&rows=#{rows}&start=#{start}")
          .to_return(status: 200, body: fixture, headers: {})
  end

  def stub_orcid_query(url:, fixture:)
    stub_request(:get, url)
      .with(
        headers: {
          "Authorization" => "Bearer test_token"
        }
      )
      .to_return(status: 200, body: fixture, headers: {})
  end
end

RSpec.configure do |config|
  config.include OrcidStubbing
end
