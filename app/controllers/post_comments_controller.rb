class PostCommentsController < ApplicationController
def create
    @post_image = PostImage.find(params[:post_image_id])
    @comment = current_user.post_comments.new(post_comment_params)
    @comment.post_image_id = @post_image.id
    if @comment.save
    redirect_to post_image_path(@post_image)
    flash[:notice] = "コメントしました！"
    else
    render("post_images/index")
    end

end

def destroy
   postcomment = PostComment.find_by(id: params[:id])
   postcomment.destroy
   redirect_to post_image_path(params[:post_image_id])
   flash[:notice] = "削除しました！"
end

private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
