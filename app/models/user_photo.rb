require 'open-uri'
require 'json/pure'
class UserPhoto < ActiveRecord::Base
  attr_accessible :user_id, :height, :width, :image_url

  belongs_to :user
  validates :user_id, :uniqueness =>{:scope => :image_url}
  class << self
 
    def get_user_photo(user)
      @photos = JSON.parse URI("https://graph.facebook.com/me/photos?access_token=#{user.access_token}").read
      @photos['data'].each do |photo|
        photo['images'].each do |data|
          @user_photo = UserPhoto.new(:user_id => user.id, :height => data['height'], :width => data['width'], :image_url => data['source'])
          @user_photo.save
        end
      end
    end
  end
end
