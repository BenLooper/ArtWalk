class PostsController < ApplicationController
    before_action :authenticated?
    before_action :current_post, only: [:edit,:update]

    def index
        @posts = Post.all
    end 

    def new 
        @post = Post.new
    end 

    def create 
        @user.posts.build(post_params).save
        redirect_to user_path(@user)
    end 

    def edit 
    end 

    def update 
        @post.update(post_params)
        redirect_to user_path(session[:id])
    end 

    def destroy 
        Post.destroy(params[:id])
        redirect_to user_path(session[:id])
    end 


    def current_post
        @post = Post.find(params[:id])
    end 

    private

    def post_params
        params.require(:post).permit(:image_url,:description,:genre_id)
    end 

end
