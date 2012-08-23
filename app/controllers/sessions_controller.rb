
class SessionsController < ApplicationController

  def login
    auth = request.env['omniauth.auth']
    user = User.find_by_uid(auth['uid']) || User.create_account(auth)
    session[:user_id] = user.id
    #user.update_access_token(params[:code]) if params[:code]
    #logger.debug auth.to_yaml
    redirect_to root_url
  end
  
  def logout
    session[:user_id] = nil
    redirect_to root_url 
  end

end
