class OrderController < ApplicationController

 def new
    response = EXPRESS_GATEWAY.setup_purchase(1000,
      :name              => "Tickets",
      :quantity          => 20,
      :description       => "Sample",
      :amount            => 300,
      :ip                => request.remote_ip,
      :return_url        => url_for(:action => 'callback', :only_path => false),
      :cancel_return_url => url_for(:action => 'index', :only_path => false)
    )
    p response
    redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
  end

  def callback
    @order = Order.new
    @order.express_token = params[:token]
  end

  def create
    @order = Order.new
    @order.attributes = params[:order].merge(:ip_address => request.remote_ip)
    if @order.purchase
      if @order.save
        redirect_to :action => 'show', :id => '@order.id'
      else
        raise 'failed to save'
      end
    else
      raise 'failed to purchase. ' + @order.transactions.first.response.message
    end
  end

  def show
  end

  def index
  end

  def cancel
    render :text => 'canceled'
  end
end