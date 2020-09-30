class SessionsController < ApplicationController

  def sign_in
    @user = User.new 
  end

  def create 

    if !user_params[:username] || user_params[:username].empty? 
      redirect_to sign_in_path
    else 
      user = User.all.find_by username:user_params[:username]
      session[:user] = user
      redirect_to user_path(session[:user])
    end 
  end 

  def user_params 
    params.require(:user).permit(:username, :password)
  end 
    
end
# Seurat
# 3766787944