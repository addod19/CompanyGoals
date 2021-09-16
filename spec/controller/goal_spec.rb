RSpec.describe GoalsController do
  describe "GET show" do
    it "assigns @goals" do
      goal = Goal.create
      get :show
      expect(assigns(:goals)).to eq([goal])
    end

    it "renders the show in json format" do
      get :show
      expect(response).to render_json("show")
    end
  end
end