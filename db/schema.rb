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

ActiveRecord::Schema.define(version: 20150828030652) do

  create_table "cheek_items", force: :cascade do |t|
    t.string   "store"
    t.string   "brand"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cheeks", force: :cascade do |t|
    t.integer  "look_id"
    t.string   "selfie"
    t.integer  "cheek_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eye_items", force: :cascade do |t|
    t.string   "store"
    t.string   "brand"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eyes", force: :cascade do |t|
    t.integer  "look_id"
    t.string   "selfie"
    t.integer  "eye_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lip_items", force: :cascade do |t|
    t.string   "store"
    t.string   "brand"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lips", force: :cascade do |t|
    t.integer  "look_id"
    t.string   "selfie"
    t.integer  "lip_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "looks", force: :cascade do |t|
    t.string   "category"
    t.integer  "user_id"
    t.text     "notes"
    t.text     "used_on"
    t.string   "selfie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "avatar"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
