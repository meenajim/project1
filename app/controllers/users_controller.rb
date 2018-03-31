class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      # redirect_to root_path
      redirect_to login_path
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation,:user_type)
    end
end
