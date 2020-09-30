class ApplicationController < ActionController::Base

    def feed 
        @user = User.find(session[:id])
    end 

end
