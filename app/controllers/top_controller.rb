class TopController < ApplicationController
  def index
   if @user
   UserFriend.get_user_friend_date(@user) 
   end
  end
end
