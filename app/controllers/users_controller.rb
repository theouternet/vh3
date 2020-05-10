class UsersController < ApplicationController
  
  #"Before" or other syntax?
  
  def index 
    @users = User.all
  end 
  
  def new 
    @user = User.new
  end 
  
  def create 
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id
      redirect_to root_path
    else 
      render new 
    end 
  end 
  
  def show 
    @user = User.find_by_id(params[:id])
  end 
  
  private 
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end 
  
end