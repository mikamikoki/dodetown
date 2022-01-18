class PostImagesController < ApplicationController
  def index
    @post_images = PostImage.page(params[:page]).reverse_order
  end

  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end

  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    if @post_image.save
      redirect_to root_path
      flash[:notice] = "投稿しました！"
    else
      render("post_images/new")
    end
  end

  def destroy
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to root_path
    flash[:notice] = "削除しました！"
  end

  def update
   @post_image = PostImage.find(params[:id])
   p post_image_params

   if @post_image.update(post_image_params)
    flash[:notice] = "編集しました！"
   redirect_to post_image_path(@post_image.id)
   else
    render("post_images/edit")
   end
  end

  def edit
   @post_image = PostImage.find(params[:id])
  end

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption, :address)
  end

end
