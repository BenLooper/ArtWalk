class CommentsController < ApplicationController
    before_action :authenticated?

    def create 
        @user.comments.build(content:comment_params[:content], post_id:comment_params[:post_id])
        redirect_to comment_params[:origin]
    end 


    def comment_params 
        params.require(:comment).permit(:content,:post_id, :origin)
    end 
end
