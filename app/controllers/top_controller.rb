class TopController < ApplicationController
  def index
    @item = Item.all
    if @user 
      UserPhoto.get_user_photo(@user)
      UserInterest.get_user_interest(@user)
      UserLike.get_user_likes(@user)    
      UserFriend.get_user_friend_date(@user)    
    end
  end
end
