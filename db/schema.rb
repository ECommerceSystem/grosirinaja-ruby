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

ActiveRecord::Schema.define(version: 2018_11_12_024214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyer_goods", force: :cascade do |t|
    t.integer "total_price"
    t.integer "quantity"
    t.bigint "user_id", null: false
    t.bigint "good_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_buyer_goods_on_good_id"
    t.index ["user_id"], name: "index_buyer_goods_on_user_id"
  end

  create_table "goods", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_goods_on_user_id"
  end

  create_table "seller_goods", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "good_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_seller_goods_on_good_id"
    t.index ["user_id"], name: "index_seller_goods_on_user_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "amount"
    t.bigint "good_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_stocks_on_good_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 128
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  add_foreign_key "buyer_goods", "goods"
  add_foreign_key "buyer_goods", "users"
  add_foreign_key "goods", "users"
  add_foreign_key "seller_goods", "goods"
  add_foreign_key "seller_goods", "users"
  add_foreign_key "stocks", "goods"
end
