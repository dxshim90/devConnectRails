class CommentsController < ApplicationController
    before_action :find_post, only: [:edit, :update, :destroy]

    def new 
    end 

    def create 

    end

    def edit 
    end

    def update 
    end

    def destroy 
    end

    private 

    def comment_params 
        params.require(:comment).permit(:content)
    end

    def find_post 
        @post = Post.find(params[:post_id])
    end

    def find_comment
        @comment = @post.comments.find(params[:id])
    end

end
