class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :detail
      t.string :price
      t.string :item_image_uid
      t.timestamps
    end
  end
end
