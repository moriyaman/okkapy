class ApplicationController < ActionController::Base
  protect_from_forgery
 
  before_filter :user_defined


  def user_defined
    session[:user_id] ? @user = User.find_by_uid(session[:user_id]) : @user=nil
  end

  def user_friend_defined
    @user ? @friends = @user.user_friends : @friend=nil
  end
end
