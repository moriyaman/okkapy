class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :mail
      t.string :last_name
      t.string :first_name
      t.integer :uid ,:limit => 8
      t.string :image_url
      t.string :access_token
      t.timestamps
    end
  end
end
