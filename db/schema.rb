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

ActiveRecord::Schema.define(version: 20160513034041) do

  create_table "packages", force: :cascade do |t|
    t.string   "itinerary"
    t.string   "ship"
    t.string   "dates"
    t.string   "duration"
    t.decimal  "price"
    t.integer  "rooms"
    t.integer  "people"
    t.string   "room_type"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "packages", ["user_id"], name: "index_packages_on_user_id"

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.string   "tonnage"
    t.string   "length"
    t.string   "max_beam"
    t.string   "type"
    t.text     "activities"
    t.text     "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "vendor_id"
  end

  add_index "ships", ["vendor_id"], name: "index_ships_on_vendor_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "country"
    t.string   "address1"
    t.string   "address2"
    t.string   "region"
    t.string   "postal_code"
    t.string   "tel"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "vendors", force: :cascade do |t|
    t.string   "company"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
  end

end
