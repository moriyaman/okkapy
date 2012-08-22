class Item < ActiveRecord::Base
  attr_accessible :name, :price, :photo, :category
 
  ITEM_TYPE = ["trump","iphone_case","wall_paper"]
  

end
