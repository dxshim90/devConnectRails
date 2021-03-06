class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:create, :new, :edit, :update, :destroy]
    before_action :find_post, only: [:show, :edit, :update, :destroy]

    def index 
        @posts = Post.all.order("created_at DESC")
    end

    def new 
        @post = Post.new 
    end

    def create
        @post = Post.new(post_params)
            if current_user.profile.nil?
                return redirect_to new_profile_path
            else 
                @post.profile_id = current_user.profile.id
            end
        if @post.save 
            redirect_to @post
        else
            render 'new'
        end
    end

    def edit 
        
    end

    def show

    end

    def update 
        if @post.update 
            redirect_to @post
        else 
            flash[:error] = @profile.errors.full_messages.to_sentence
            render 'edit'
        end
    end

    def destroy 
        @post.destroy
        redirect_to posts_path
    end

        



    private 

    def post_params 
        params.require(:post).permit(:title, :body)
    end

    def find_post 
        @post = Post.find(params[:id])
    end

end
