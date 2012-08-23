class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :price
      t.string :express_token
      t.string :express_payer_id
      t.integer :purchase_id
      t.timestamps
    end
  end
end
