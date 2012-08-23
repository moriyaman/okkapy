module ItemHelper

  def fb_image_url(uid)
    "http://graph.facebook.com/#{uid}/picture"
  end

  def item_type(item)
    return Item::ITEM_TYPE[item.category-1]
  end

end
