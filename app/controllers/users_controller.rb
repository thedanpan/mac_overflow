class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update, :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    @current_user = @user
    redirect_to root_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params[:user])
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :pic_url, :password, :password_confirmation)
  end

end
