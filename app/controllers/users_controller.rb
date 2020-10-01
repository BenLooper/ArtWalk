class UsersController < ApplicationController
    before_action :authenticated?, only: [:feed, :show, :activity]

    def show
        @profile = User.find(params[:id])
    end 

    def feed 
    end 

    def new 
        @user = User.new
    end 

    def back 
        Back.find_or_create_by(backer_id:session[:id],backee_id:params[:id])
        redirect_to user_path(params[:id])
    end 

    def forget 
        back = Back.find_by(backer_id:session[:id],backee_id:params[:id])
        Back.destroy(back.id)
        redirect_to user_path(params[:id])
    end 

    def activity 
        @snaps = @user.snaps
        @slaps = @user.slaps
        @comments = @user.comments
        @posts = @user.posts
        
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


    private 
    
    def user_params 
        params.require(:user).permit(:username, :password, :password_confirmation)
    end 

end 
