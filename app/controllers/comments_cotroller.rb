class CommentsController < ActionController::Base
  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to comments_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  private

  def comment_params
    params.require(:comment).permit(:author_id, :post_id)
  end
end
