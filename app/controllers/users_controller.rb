class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = 'users'
    @posts = 'posts'
  end
end
