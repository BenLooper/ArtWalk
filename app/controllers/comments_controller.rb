class CommentsController < ApplicationController
    before_action :authenticated?
    before_action :current_comment, only: [:edit, :update]

    def create 
        @user.comments.build(content:params[:content],post_id:params[:post_id]).save
        redirect_to post_path(params[:post_id])
    end 

    def edit 
        # byebug
        @post = Post.find(@comment.post.id)
    end 

    def update
        # byebug
        @comment.update(comment_params)
        redirect_to post_path(comment_params[:post_id])
    end 

    def destroy 
        Comment.destroy(params[:id])
        redirect_to post_path(params[:post_id])
    end 

    def current_comment
        @comment = Comment.find(params[:id])
    end 


    private

    def comment_params 
        params.require(:comment).permit(:content,:id,:post_id)
    end 

end
