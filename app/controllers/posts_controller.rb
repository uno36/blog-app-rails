class PostsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    @comments = @post.recent_comments
  end

  def new
    @user = current_user
    @post = Post.new
    @post = @user.posts.new
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    if @post.save
      redirect_to user_post_path(@user, @post)
    else
      flash.now[:errors] = 'Invalid post!'
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end

  def set_user
    @user = current_user
  end
end
