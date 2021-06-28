require 'rails_helper'

RSpec.describe "Pictures", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/pictures/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/pictures/show"
      expect(response).to have_http_status(:success)
    end
  end
end
