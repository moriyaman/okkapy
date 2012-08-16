class Order < ActiveRecord::Base

  attr_accessor :first_name, :last_name, :ip_address

  def price_in_cents
    1000
  end

  def purchase
    response = process_purchase
    response.success?
  end

  def express_token=(token)
    write_attribute(:express_token, token)
    if new_record? && token.present?
      details = EXPRESS_GATEWAY.details_for(token)
      self.express_payer_id = details.payer_id
      self.first_name = details.params["first_name"]
      self.last_name = details.params["last_name"]
    end
  end

  private

  def process_purchase
    EXPRESS_GATEWAY.purchase(
      price_in_cents,
      :ip => ip_address,
      :token => express_token,
      :payer_id => express_payer_id
    )
  end
end

