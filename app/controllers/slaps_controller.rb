class SlapsController < ApplicationController
    before_action :authenticated?
   
    def create 
        Slap.find_or_create_by(user_id:@user.id,post_id:params[:post_id])
        redirect_to params[:origin]
    end 

    def destroy
        slap = Slap.find_by(post_id:params[:post_id],user_id:@user.id)
        Slap.destroy(slap.id)
        redirect_to params[:origin]
    end 

end
