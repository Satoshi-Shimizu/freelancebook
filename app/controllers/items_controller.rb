class ItemsController < ApplicationController
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
  def item_params
    params.require("item").permit(:title, :contents, :price_s, :price_e, :place_id, :jobtype_id, :industry_id)
    binding.pry
  end
  
end
