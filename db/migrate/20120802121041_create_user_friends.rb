class CreateUserFriends < ActiveRecord::Migration
  def change
    create_table :user_friends do |t|
      t.integer  :user_id
      t.string   :friend_name
      t.integer  :friend_uid
      t.integer  :friend_id
      t.date     :friend_birthday
      t.string   :friend_picture
      t.timestamps
    end
  end
end
