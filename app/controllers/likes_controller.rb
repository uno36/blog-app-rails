class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    current_user.like(@post)
    redirect_to @post, notice: 'You liked this post.'
  end

  def destroy
    @post = Like.find(params[:id]).post
    current_user.unlike(@post)
    redirect_to @post, notice: 'You unliked this post.'
  end
end