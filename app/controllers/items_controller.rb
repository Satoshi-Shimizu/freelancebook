class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @items = Item.new
    @languages  = Language.all
    @jobtypes   = Usertype.all
    @industries = Industry.all
  end

  def create
    #item = Item.create(item_params)
  end

  private
  def item_params
    params.require("item").permit(:title, :contents, :price_s, :price_e, :place_id, :jobtype_id, :industry_id)
    binding.pry
  end
  
end
