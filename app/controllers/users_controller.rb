class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.where.not(id: current_user.id)
  end
  
  def followings
    user = User.find(params[:id])
    @user = user.followings
  end
  
  def followers
    user = User.find(params[:id])
    @user = user.followers
  end
  
end
