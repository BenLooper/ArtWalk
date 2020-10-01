class SnapsController < ApplicationController
    before_action :authenticated?
   
    def create 
        byebug
        Snap.find_or_create_by(user_id:@user.id,post_id:params[:post_id])
        redirect_to params[:origin]
    end 

    def destroy
        snap = Snap.find_by(post_id:params[:post_id],user_id:@user.id)
        Snap.destroy(snap.id)
        redirect_to params[:origin]
    end 

end
