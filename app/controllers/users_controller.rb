class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.create(user_params)

  if @user
    redirect_to new_session_path
  else
    flash[:alert] = "Something went wrong."
    render :new
  end
end

private

def user_params
  params.permit(:email, :password, :password_confirmation)
end

end
