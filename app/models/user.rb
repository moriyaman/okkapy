class User < ActiveRecord::Base
  
  has_many :user_friends
  has_many :user_likes
  has_many :user_photos
  has_many :user_interests
 
  def self.create_account(auth)
    user = User.new
    user.last_name = auth['info']['last_name']
    user.first_name = auth['info']['first_name'] if auth['info']['first_name']
    user.mail = auth['info']['email'] if auth['info']['email']
    user.access_token = auth['credentials']['token']
    user.uid = auth['uid']
    user.image_url = auth['info']['image']
    user.save

   #ユーザ情報
    #UserPhoto.get_user_photo(user)
    #UserInterest.get_user_interest(user)
    #UserLike.get_user_likes(user)    
    #UserFriend.get_user_friend_date(user)    
    return user
  end

  def test_test
  end
end
