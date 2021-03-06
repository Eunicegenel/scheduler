class UsersController < ApplicationController
  def sched
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save 
      redirect_to user_sched_path
    else
      render :new
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:email,:username,:password)
  end
end
