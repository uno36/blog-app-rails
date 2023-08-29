class PostsController < ActionController::Base
  def index; end

  def show; end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    paramst.require(:post).permit(:author_id)
  end
end
