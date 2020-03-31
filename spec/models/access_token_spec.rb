# frozen_string_literal: true
require "rails_helper"

RSpec.describe AccessToken do
  describe ".token" do
    context "if there's a token on disk" do
      it "retrieves from disk" do
      end
    end

    context "if there's no token on disk" do
      it "fetches from orcid api" do
      end
    end
  end

  # private methods

  describe "store_token" do
    it "stores the token on disk" do
    end
  end

  describe "retrieve_token" do
    it "retrieves the token from disk" do
    end
  end

  describe "fetch_token" do
    it "fetches access token from orcid api" do
    end
  end
end
