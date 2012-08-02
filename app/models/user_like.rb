require 'open-uri'
require 'json/pure'
class UserLike < ActiveRecord::Base
  attr_accessible :user_id, :name, :category, :category_id

  validates :user_id, :uniqueness =>{:scope => :category_id}
  class << self
 
    def get_user_likes(user)
      @likes = JSON.parse URI("https://graph.facebook.com/me/likes?access_token=#{user.access_token}").read
      @likes['data'].each do |like|
        @user_like = UserLike.new(:user_id => user.id, :name => like['name'], :category => like['category'], :category_id => like['id'].to_i)
        @user_like.save
      end
    end
  
  end


end
