class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_post, only: [:create, :edit, :update, :destroy]
    before_action :find_comment, only: [:edit, :update, :destroy]

    def new 
    end 

    def create 
        @comment = @post.comments.create(comment_params)
        @comment.profile_id = current_user.profile.id
        if @comment.save 
            redirect_to @post
        else
            render 'new'
        end
    end

    def edit 
    end

    def update 
        if @comment.update 
            redirect_to @post 
        else
            render 'edit'
        end
    end

    def destroy 
        @comment.destroy 
        redirect_to @post
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
