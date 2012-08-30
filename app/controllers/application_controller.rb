class ApplicationController < ActionController::Base
  protect_from_forgery 
  before_filter :user_defined, :user_in_cart

  def user_defined
    session[:user_id] ? @user = User.find(session[:user_id]) : @user=nil
  end

  def user_friend_defined
    @user ? @friends = @user.user_friends : @friend=nil
  end

  def login_check
    if @user.blank?
      redirect_to :controller => 'sessions', :action => 'index'
    end
  end

  def user_in_cart
    @not_purchase = Purchase.where(:user_id => @user.id, :purchase_flg => false)
    if @not_purchase.present?
      @total_count = 0
      @not_purchase.each do |not_purchase|
        @total_count += not_purchase.product_count
      end       
    end
    return @not_purchase, @total_count
  end
end
