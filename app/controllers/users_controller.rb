class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.includes(:posts)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end
end
