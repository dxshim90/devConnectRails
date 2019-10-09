class PostsController < ApplicationController

    def index 
        @posts = Post.all 
    end

    def new 
        @post = Post.new 
    end

    def create
        @post = Post.new(post_params)
        @post.profile_id = current_user.profile.id
        if @post.save 
            redirect_to @post
        else
            render 'new'
        end
    end

    def edit 
        
    end

    def update 
        if @post.update 
            redirect_to @post
        else 
            render 'edit'
        end
    end

    def destroy 
        @post.destroy
        redirect_to profile_path
    end

        



    private 

    def post_params 
        params.require(:post).permit(:title, :body)
    end

end
