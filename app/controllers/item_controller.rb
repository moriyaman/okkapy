class ItemController < ApplicationController

  def index
    @item = Item.all
  end

  def detail
    @item = Item.find(params[:id])
  end

  def preview
    @item = Item.find(params[:id])
  end

end
