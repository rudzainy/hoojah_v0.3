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

ActiveRecord::Schema.define(version: 20160203153331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "text"
    t.integer  "opinion_id"
    t.integer  "user_id"
    t.integer  "user_vote",  default: 0
    t.boolean  "disable",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "debates", force: :cascade do |t|
    t.integer  "opinion_id"
    t.integer  "user_pro_id"
    t.integer  "user_con_id"
    t.datetime "deadline"
    t.integer  "winner_id"
    t.boolean  "disable",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "description"
  end

  create_table "hoojahs", force: :cascade do |t|
    t.integer  "debate_id"
    t.text     "body"
    t.boolean  "disable",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sender_id"
    t.integer  "debate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opinions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "title"
    t.string   "image"
    t.string   "option1"
    t.string   "option2"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "disable",     default: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "role_id",                default: 3
    t.string   "name"
    t.text     "about"
    t.string   "avatar"
    t.string   "location"
    t.integer  "gender"
    t.date     "birthday"
    t.integer  "vote_count"
    t.integer  "opinion_count"
    t.integer  "debate_count"
    t.integer  "karma"
    t.boolean  "disable"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "opinion_id"
    t.integer  "user_id"
    t.integer  "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
