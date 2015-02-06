require 'rails_helper'


describe UsersController do

  describe "GET #show" do
    it "renders the show template" do
      user = create(:user)
      get :show, id: user
      expect(response).to render_template :show
    end
  end

  # describe "GET #edit" do
  #   it "assigns assigns the requested user to @user" do
  #     user = create(:user)
  #     get :edit, id: user
  #     expect(assigns(:user)).to eq User
  #   end
  # end


end
