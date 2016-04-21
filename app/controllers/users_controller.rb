class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def index
  @users = User.all
  end
  
  def show
  @user = User.find(params[:id])
  end
  
  # def create
  #   @user = User.create!(user_param)
  # end
    
  def edit
    @user = User.find params[:id]  
  end
    
  def update
    @user = User.find params[:id]
    @user.update_attributes!(user_param)
  end
      
  def delete
  User.find(params[:id]).destroy
  end
  
  def user_param
  params.require(:name, :email).permit(:phone, :email_verified, :is_admin)
  end
  
end
