class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :price
      t.integer :postage
      t.integer :margin
      t.integer :product_count
      t.timestamps
    end
  end
end
