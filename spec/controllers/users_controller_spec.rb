require 'rails_helper'


describe UsersController do

  describe "GET #index" do
    xit "displays all users" do

    end
  end

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

  describe "PUT #update" do
    xit "updates the user's information" do

    end
  end

  describe "destroy" do
    xit "delete the user" do

    end
  end


end
