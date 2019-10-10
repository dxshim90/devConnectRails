class ProfilesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :show, :edit, :update, :destroy]
    before_action :find_profile, only: [:show, :edit, :update, :destroy]

    def index 
        @profiles = Profile.all
    end

    def new 
        @skills = Skill.all
        @profile = Profile.new
    end 

    def create
        @profile = Profile.new(profile_params)
        @profile.user_id = current_user.id
        if @profile.save 
            @profile.skills.build(params[:skill_ids])
            redirect_to @profile
        else
            render 'new'
        end
    end

    def edit 
    end 

    def update 
        if @profile.update(profile_params)
            redirect_to @profile
        else
            render 'edit'
        end
    end

    def destroy
        @profile.destroy 
        redirect_to root_path
    end

    private 

    def profile_params
        params.require(:profile).permit(:username, :description, :role, :image, :skill_ids =>[])
    end

    def find_profile 
        @profile = Profile.find(params[:id])
    end
end
