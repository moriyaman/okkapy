require 'open-uri'
require 'json/pure'
class UserInterest < ActiveRecord::Base
  
  attr_accessible :user_id, :name, :category, :category_id
  
  belongs_to :user

  validates :user_id, :uniqueness =>{:scope => :category_id}
  class << self
 
    def get_user_interest(user)
      @interests = JSON.parse URI("https://graph.facebook.com/me/interests?access_token=#{user.access_token}").read
      @interests['data'].each do |interest|
        @user_interest = UserInterest.new(:user_id => user.id, :name => interest['name'], :category => interest['category'], :category_id => interest['id'].to_i)
        @user_interest.save
      end
    end
  
  end

end
