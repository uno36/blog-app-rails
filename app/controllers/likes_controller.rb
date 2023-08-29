class LikesController < ActionController::Base
  def create
    @like = Like.new(like_params)
    @like.save
    redirect_to likes_path
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to likes_path
  end

  private

  def like_params
    params.require(:like).permit(:author_id, :post_id)
  end
end
