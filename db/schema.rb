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

ActiveRecord::Schema.define(version: 20150821130821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # BUSINESS_USERS TABLE
  create_table "business_users", force: :cascade do |t|
    t.integer  "company_id"
    t.string   "name"
    t.integer  "phone_number"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "business_users", ["company_id"], name: "index_business_users_on_company_id", using: :btree

  # COMPANIES TABLE
  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  # DESKS TABLE
  create_table "desks", force: :cascade do |t|
    t.string   "service_type"
    t.integer  "business_user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "desks", ["business_user_id"], name: "index_desks_on_business_user_id", using: :btree

  # INDIVIDUAL_USERS TABLE
  create_table "individual_users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "phone_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  # SESSIONS TABLE
  create_table "sessions", force: :cascade do |t|
    t.integer  "individual_user_id"
    t.integer  "business_user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "sessions", ["business_user_id"], name: "index_sessions_on_business_user_id", using: :btree
  add_index "sessions", ["individual_user_id"], name: "index_sessions_on_individual_user_id", using: :btree

  add_foreign_key "business_users", "companies"
  add_foreign_key "desks", "business_users"
  add_foreign_key "sessions", "business_users"
  add_foreign_key "sessions", "individual_users"
end
