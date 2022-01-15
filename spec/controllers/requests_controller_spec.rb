require "rails_helper"

RSpec.describe RequestsController do
  describe "GET index" do
    it "assigns @request" do
      request = create :request
      get :index
      expect(assigns(:requests)).to eq([request])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end