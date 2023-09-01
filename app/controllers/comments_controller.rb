class UsersController < ApplicationController
  def show_comments
    @user = User.find(params[:id])
    @comments = @user.comments
  end
end
