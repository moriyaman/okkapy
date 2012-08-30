class Item < ActiveRecord::Base
  attr_accessible :name, :detail, :price, :item_image_uid, :category
 
  ITEM_TYPE = ["trump","iphone_case","wall_paper"]
  

end
