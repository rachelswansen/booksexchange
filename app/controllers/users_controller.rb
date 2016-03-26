class UsersController < ApplicationController  
  def user_params
    params.require(:user).permit(:username, :email, :password, :confirmation)
  end
  def index
    @users = User.all()
  end
  def new
    @user = User.new 
  end
  def create
    @user = User.new(user_params)
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"

    render "index"
  end
end

