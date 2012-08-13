class PurchaseController < ApplicationController

  def index
    @item = Item.find(1) 
  end

  def detail
   @user = User.find(@user.id) 
  end

  def finish
    @user = User.find(@user.id)
    @user.attributes = params[:user]
    @user.save
  end
end
