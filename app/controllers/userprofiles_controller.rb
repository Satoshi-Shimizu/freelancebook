class UserprofilesController < ApplicationController

  def new
    @profile = Userprofile.new
  end

  def create
    @profile = Userprofile.create(profile: profile_params[:profile], school_id: profile_params[:school_id], twitterurl: profile_params[:twitterurl], portfoliourl: profile_params[:portfoliourl], user_id: current_user.id)
    @user = User.find(current_user.id)
    @user.userprofile_id = @profile.id
    @user.save
  end

  def edit
    @profile = Userprofile.find(params[:id])  
  end

  def update
    profile = Userprofile.find(params[:id])
    if profile.user_id == current_user.id
      profile.update(profile_params)
    end
  end

  private
  def profile_params
    params.require("userprofile").permit(:profile, :school_id, :twitterurl, :portfoliourl)
  end

end
