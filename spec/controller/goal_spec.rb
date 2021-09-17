require 'rails_helper'

RSpec.describe GoalsController, type: :controller do
  describe "GET show" do
    it "assigns @goals" do
      goal = Goal.create
      get :show
      expect(response.status).to eq(200)
    end

    it "renders the show in json format" do
      get :show
      expect(response).to render_json("show")
    end
  end
end