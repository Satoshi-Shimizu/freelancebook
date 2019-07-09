class ItemsController < ApplicationController
  
  before_action :move_to_index, except: :index

  def index
    @items = Item.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @items = Item.new
  end

  def create
    item = Item.create(title: item_params[:title], contents: item_params[:contents], price_s: item_params[:price_s], price_e: item_params[:price_e], place_id: item_params[:place_id], jobtype_id: item_params[:jobtype_id], industry_id: item_params[:industry_id], user_id: current_user.id)
  end

  private
  def item_params
    params.require("item").permit(:title, :contents, :price_s, :price_e, :place_id, :jobtype_id, :industry_id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
