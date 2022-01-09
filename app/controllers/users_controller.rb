class UsersController < ApplicationController

  def index
    @users = User.page(params[:page]).reverse_order
  end

  def show

  end

  def update

  end

  def edit
    @user = User.find(params[:id])
  end


end
