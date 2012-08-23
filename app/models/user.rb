# -*- coding: utf-8 -*-
require "json"
require "open-uri"
require 'net/https'
require 'net/http'
require 'json/pure'
require "uri"

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
    user.birthday = auth['info']['birthday']
    user.save

   #ユーザ情報
    #UserPhoto.get_user_photo(user)
    #UserInterest.get_user_interest(user)
    #UserLike.get_user_likes(user)    
    #UserFriend.get_user_friend_date(user)    
    return user
  end

  def update_access_token(code)
    logger.debug("######################################")
    logger.debug(JSON.parse(URI(URI.encode("https://graph.facebook.com/oauth/access_token?client_id=481522445209074&redirect_uri=http://localhost:3000/&client_secret=647df99d1c1445e84aada24d9bf11c8b&code=#{code}")).read))
    access_token = JSON.parse(URI(URI.encode("https://graph.facebook.com/oauth/access_token?client_id=481522445209074&redirect_uri=http://localhost:3000/&client_secret=647df99d1c1445e84aada24d9bf11c8b&code=#{code}")).read)
  end

  def test_test
  end
end
