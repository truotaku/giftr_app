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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140714042053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: true do |t|
    t.integer "purchaser_id"
    t.string  "purchaser_type"
  end

  create_table "buyers_news", force: true do |t|
    t.integer "purchaser_id"
    t.string  "purchaser_type"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friend_requests", force: true do |t|
    t.string   "sender_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sender_id"
  end

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gifts", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "price"
    t.text     "small_image_url"
    t.text     "large_image_url"
    t.text     "amazon_url"
    t.text     "specifics"
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "buyer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.text     "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "small_image_url"
    t.text     "large_image_url"
    t.text     "fb_access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facebook_id",     limit: 8
  end

end
