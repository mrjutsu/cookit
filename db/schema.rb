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

ActiveRecord::Schema.define(version: 20141004171548) do

  create_table "models", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "names", force: true do |t|
    t.string   "ingredients"
    t.string   "type"
    t.string   "ocassion"
    t.string   "description"
    t.string   "picture"
    t.string   "video"
    t.string   "eating_qtty"
    t.string   "prep_time"
    t.string   "country"
    t.string   "tips"
    t.string   "difficulty"
    t.string   "rating"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipees", force: true do |t|
    t.string   "name"
    t.string   "ingredients",         limit: 300
    t.string   "food_type"
    t.string   "ocassion"
    t.string   "description",         limit: 600
    t.string   "picture"
    t.string   "video",               limit: 300
    t.string   "eating_qtty"
    t.string   "minutes"
    t.string   "country"
    t.string   "tips",                limit: 300
    t.string   "difficulty"
    t.string   "rating"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "hours"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "instructions",        limit: 200
  end

  add_index "recipees", ["user_id"], name: "index_recipees_on_user_id"

  create_table "sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                              default: "",    null: false
    t.string   "encrypted_password",                 default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                   limit: 30
    t.string   "username",               limit: 15
    t.string   "profile_pic"
    t.string   "bio"
    t.string   "cooking_expertise"
    t.string   "favorite_foods"
    t.string   "location",               limit: 30
    t.string   "url",                    limit: 100
    t.string   "language",               limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.boolean  "admin",                              default: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
