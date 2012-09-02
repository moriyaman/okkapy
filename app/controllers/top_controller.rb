class TopController < ApplicationController
  #before_filter :check_login?,:except => 'login' 
 
  def index
    @item = Item.all
    #if @user 
      #UserPhoto.get_user_photo(@user)
      #UserInterest.get_user_interest(@user)
      #UserLike.get_user_likes(@user)    
      #UserFriend.get_user_friend_date(@user)
    #end
    if @user.nil?
      redirect_to :action=>'login'
    end
  end

  def login
  end
end
