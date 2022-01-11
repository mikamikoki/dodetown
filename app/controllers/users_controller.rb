class UsersController < ApplicationController

  def index
    @users = User.page(params[:page]).reverse_order
  end

  def show
   @user = User.find(params[:id])
   @post_images = @user.post_images
  end

  def update

  end

  def edit
    @user = User.find(params[:id])
  end


end
