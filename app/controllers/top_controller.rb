class TopController < ApplicationController
  
  before_filter :login_check
  
  def index
    @item = Item.all
  end

end
