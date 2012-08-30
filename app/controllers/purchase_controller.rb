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

  def save_product
    @item = Item.find(params[:id])
    if Purchase.where(:user_id => @user.id, :item_id => params[:id], :purchase_flg => false).present?
      @purchase = Purchase.where(:user_id => @user.id, :item_id => params[:id], :purchase_flg => false).first
      @purchase.product_count += 1
      @purchase.price = @purchase.product_count * @item.price
    else
      @purchase = Purchase.new({:user_id => @user.id, :item_id => @item.id, :product_count => 1})
    end
    @purchase.save
    render :layout => false
  end
end
