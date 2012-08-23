class PurchaseController < ApplicationController

  def index
    @item = Item.find(params[:id])
    @purchase = Purchase.new 
  end

  def detail
   @user = User.find(@user.id)
   @purchase = Purchase.new(params[:purchase])
   @purchase.save
  end

  def finish
    @user = User.find(@user.id)
    @user.attributes = params[:user]
    @user.save
    @purchase = Purchase.find(params[:purchase_id])
  end
end
