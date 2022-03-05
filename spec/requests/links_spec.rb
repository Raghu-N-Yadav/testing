require 'rails_helper'

RSpec.describe "Links", type: :request do
  describe "GET /links" do
    it "works! (now write some real specs)" do
      get about_path
      expect(response).to have_http_status(200)
    end
    it "check for root path" do
      get root_path
      expect(response).to have_http_status(200)
    end

  end
end
