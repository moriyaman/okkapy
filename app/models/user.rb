class User < ActiveRecord::Base
  
  has_many :user_friends
 
  def self.create_account(auth)
    user = User.new
    user.last_name = auth['info']['last_name']
    user.first_name = auth['info']['first_name']
   # user.email = auth['info']['email']  
    user.access_token = auth['credentials']['token']
    user.uid = auth['uid']
    user.image_url = auth['info']['image']
    debugger
    user.save!
  end

  def test_test
  end
end
