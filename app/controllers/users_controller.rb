class UsersController < ApplicationController

  before_action :ensure_correct_user, only: [:update, :edit]

  def index
    if params[:user].present?
      if params[:user].empty?
        @users = User.page(params[:page]).per(12)
      else
        @users = User.where('name LIKE(?)', "%#{params[:user][:keyword]}%")
      end
    else
      @users = User.page(params[:page]).per(12)
    end
  end

  def show
   @user = User.find(params[:id])
   @post_images = @user.post_images
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
      flash[:notice] = "プロフィールを更新しました！"
    else
      render("users/edit")
    end
  end

  def edit
    @user = User.find(params[:id])
  end


  print
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end

end
