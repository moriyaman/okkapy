require 'open-uri'
require 'json/pure'
class UserFriend < ActiveRecord::Base 
  attr_accessible :user_id, :friend_name, :friend_uid, :friend_id, :friend_birthday ,:friend_picture

  validates :user_id, :uniqueness => {:scope => [:friend_uid, :friend_id]} 
 
  belongs_to :user
  
  class << self
 
    def get_user_friend_date(user)
      @friends = JSON.parse URI("https://graph.facebook.com/me/friends?fields=name,id,birthday,picture&access_token=#{user.access_token}").read
      @friends['data'].each do |friend|
        @user_friend = UserFriend.new(:user_id => user.id, :friend_uid => friend['id'], :friend_name => friend['name'], :friend_picture => friend['picture']['data']['url']) 
        if friend['birthday']
          m = friend['birthday'].slice(0..1).to_i
          d = friend['birthday'].slice(3..4).to_i
          y = friend['birthday'].slice(6..9).to_i
          @user_friend.friend_birthday = Date.new(y,m,d)
        end
        @user_friend.save  
      end
    end
  
  end

end
