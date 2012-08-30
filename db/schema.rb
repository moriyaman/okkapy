# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120816144911) do

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "detail"
    t.integer  "price"
    t.string   "item_image_uid"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.string   "price"
    t.string   "express_token"
    t.string   "express_payer_id"
    t.integer  "purchase_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "price"
    t.integer  "postage"
    t.integer  "margin"
    t.integer  "product_count"
    t.boolean  "purchase_flg",  :default => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "user_friends", :force => true do |t|
    t.integer  "user_id"
    t.string   "friend_name"
    t.integer  "friend_uid"
    t.integer  "friend_id"
    t.date     "friend_birthday"
    t.string   "friend_picture"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "user_interests", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "category"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_likes", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "category"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_photos", :force => true do |t|
    t.integer  "user_id"
    t.integer  "height"
    t.integer  "width"
    t.string   "image_url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "mail"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "address"
    t.string   "phone"
    t.string   "post_code"
    t.integer  "uid",          :limit => 8
    t.string   "image_url"
    t.string   "access_token"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
