class UsersController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    if user
      flash[:success] = "Welcome"
      sign_in user
      redirect_to user
    else
      flash.now[:danger] = 'user not found'
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @upcoming_events = @user.upcoming_events
    @prev_events = @user.prev_events
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
