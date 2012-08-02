class CreateUserPhotos < ActiveRecord::Migration
  def change
    create_table :user_photos do |t|
      t.integer :user_id
      t.integer :height
      t.integer :width
      t.string :image_url
      t.timestamps
    end
  end
end
