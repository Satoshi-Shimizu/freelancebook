class UsersController < ApplicationController
  def show
    @name = current_user.name
    @items = current_user.items.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
  end

end
