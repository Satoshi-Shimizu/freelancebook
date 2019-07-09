class ItemsController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @items = Item.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @items = Item.new
  end

  def create
    item = Item.create(item_params)
  end

  private
  def move_to_index
    redirect_to action: :index
  end

  def item_params
    params.require("item").permit(:title, :contents, :price_s, :price_e, :place_id, :jobtype_id, :industry_id)
    binding.pry
  end
  
end
