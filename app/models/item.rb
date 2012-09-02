class Item < ActiveRecord::Base
  attr_accessible :name, :detail, :price, :item_image_uid
  image_accessor :item_image 
 
  ITEM_TYPE = ["trump","iphone_case","wall_paper"]
  

end
