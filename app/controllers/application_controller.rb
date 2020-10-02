class ApplicationController < ActionController::Base

    private
    def authenticated?
        if session[:id] && session[:id] != nil
            @user = User.find(session[:id])
        else 
            redirect_to sign_in_path
        end 
    end 
end
