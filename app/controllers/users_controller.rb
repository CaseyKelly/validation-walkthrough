class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user=User.new(user_params)

    if @user.save
      redirect_to root_path
    else
      flash[:alert] = 'There some error on dis page: '
      flash[:alert] << "<br />-"
      flash[:alert] << @user.errors.full_messages.join("<br >-")

      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end
