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

ActiveRecord::Schema.define(version: 2018_12_15_152202) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "dashboards", force: :cascade do |t|
    t.string "logotype"
    t.string "title"
    t.text "text_1"
    t.text "text_2"
    t.text "text_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title_text_1"
    t.string "title_text_2"
    t.string "title_text_3"
    t.string "url_1"
    t.string "url_2"
    t.string "url_3"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.boolean "active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_admins", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "post_users", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.text "body"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_post_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "image"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
