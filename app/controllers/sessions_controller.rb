class SessionsController < ApplicationController

  def sign_in
    @user = User.new 
  end

  def create 

    @user = User.find_by username:user_params[:username]

    if @user && @user.authenticate(user_params[:password]) 
      session[:id] = @user.id
      redirect_to root_path

    else 
      flash[:error] = "Incorrect username or password"
      redirect_to sign_in_path

    end 
  end 

  def destroy 
    session.clear
    redirect_to sign_in_path
  end 
  
  def user_params 
    params.require(:user).permit(:username, :password)
  end 
    
end
# Cassatt
# 3766787944