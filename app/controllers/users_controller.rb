class UsersController < ApplicationController
    before_action :authenticated?, only: [:feed, :show, :activity]

    def show
    end 

    def feed 
    end 

    def new 
        @user = User.new
    end 

    def create 
        new_user = User.new(user_params)

        if new_user.save && user_params[:password] == user_params[:password_confirmation]
            session[:id] = new_user[:id]
            redirect_to feed_path(new_user)
        else 
            redirect_to new_user_path
        end 
    end 

    def authenticated?
        if session[:id] != nil
            @user = User.find(session[:id])
        else 
            redirect_to sign_in_path
        end 
    end 

    def user_params 
        params.require(:user).permit(:username, :password, :password_confirmation)
    end 

end
