class PostImagesController < ApplicationController

  def index
   @post_images = PostImage.page(params[:page]).reverse_order
  end

  def show
   @post_image = PostImage.find(params[:id])
  end

  def new
   @post_image = PostImage.new
  end

  def create
   @post_image = PostImage.new(post_image_params)
   @post_image.user_id = current_user.id
   @post_image.save
   redirect_to root_path
  end

  def destroy
   @post_image = PostImage.find(params[:id])
   @post_image.destroy
   redirect_to root_path
  end

  def update

  end

  def edit

  end

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption, :address)
  end

end
