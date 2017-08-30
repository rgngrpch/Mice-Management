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

ActiveRecord::Schema.define(version: 20160504143701) do

  create_table "cages", force: :cascade do |t|
    t.string   "cage_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "mouse_id"
    t.integer  "transfer_id"
  end

  add_index "cages", ["mouse_id"], name: "index_cages_on_mouse_id"
  add_index "cages", ["transfer_id"], name: "index_cages_on_transfer_id"
  add_index "cages", ["user_id"], name: "index_cages_on_user_id"

  create_table "mice", force: :cascade do |t|
    t.integer  "tag_number"
    t.string   "genome"
    t.integer  "parent_information"
    t.string   "sex"
    t.date     "date_of_birth"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.integer  "cage_id"
    t.integer  "transfer_id"
  end

  add_index "mice", ["cage_id"], name: "index_mice_on_cage_id"
  add_index "mice", ["transfer_id"], name: "index_mice_on_transfer_id"
  add_index "mice", ["user_id"], name: "index_mice_on_user_id"

  create_table "notifications", force: :cascade do |t|
    t.text     "description"
    t.integer  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "transfer_id"
    t.integer  "production_id"
  end

  add_index "notifications", ["production_id"], name: "index_notifications_on_production_id"
  add_index "notifications", ["transfer_id"], name: "index_notifications_on_transfer_id"

  create_table "productions", force: :cascade do |t|
    t.string   "mouse_genome"
    t.integer  "mother_tag_number"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.integer  "cage_id"
    t.integer  "mouse_tag_number"
  end

  add_index "productions", ["cage_id"], name: "index_productions_on_cage_id"
  add_index "productions", ["user_id"], name: "index_productions_on_user_id"

  create_table "transfers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "mouse_id"
    t.integer  "cage_id"
  end

  add_index "transfers", ["cage_id"], name: "index_transfers_on_cage_id"
  add_index "transfers", ["mouse_id"], name: "index_transfers_on_mouse_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
