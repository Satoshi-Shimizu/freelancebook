class GoodsController < ApplicationController
  
  def create
    @good = Good.new(user_id: current_user.id, item_id: params[:item_id])
    if @good.save
      @item = Item.find(params[:item_id])
      respond_to do |f|
        f.html { redirect_to :root }
        f.json
      end
    else
      render :index
    end
  end

  def destroy
    @good = Good.find_by(user_id: current_user.id, item_id: params[:item_id])
    if @good.destroy
      @item = Item.find(params[:item_id])
      respond_to do |f|
        f.html { redirect_to :root }
        f.json
      end
    else
      render :index
    end
  end

end
