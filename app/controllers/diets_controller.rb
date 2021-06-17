class DietsController < ApplicationController
  def index 
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)

    redirect_to diets_path
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:ini_weight, :day_weight, :created_at, :updated_at)
  end
end