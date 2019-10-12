class PagesController < ApplicationController
  def index
    if user_signed_in? 
      if current_user.profile
        redirect_to profile_path(current_user.profile.id)
      else
        redirect_to new_profile_path 
      end
    end 
  end
end
