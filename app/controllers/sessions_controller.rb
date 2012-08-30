
class SessionsController < ApplicationController

  def index
  end

  def login
    auth = request.env['omniauth.auth']
    user = User.find_by_uid(auth['uid']) || User.create_account(auth)
    session[:user_id] = user.id
    #user.update_access_token(params[:code]) if params[:code]
    #logger.debug auth.to_yaml
    get_users_info(user)
    redirect_to root_url
  end
  
  def logout
    session[:user_id] = nil
    redirect_to root_url 
  end

  private
  
  def get_users_info(user) 
    UserPhoto.get_user_photo(user)
    UserInterest.get_user_interest(user)
    UserLike.get_user_likes(user)    
    UserFriend.get_user_friend_date(user)
  end

end
