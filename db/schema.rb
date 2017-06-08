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

ActiveRecord::Schema.define(version: 20170608155702) do

  create_table "crop_notes", force: :cascade do |t|
    t.integer  "crop_id",    limit: 4
    t.integer  "note_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "crop_type_notes", force: :cascade do |t|
    t.integer  "crop_type_id", limit: 4
    t.integer  "note_id",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "crop_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "crop_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "crops", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.binary   "icon",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "farm_crop_types", force: :cascade do |t|
    t.integer  "farm_id",      limit: 4
    t.integer  "crop_type_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "farm_crops", force: :cascade do |t|
    t.integer  "farm_id",    limit: 4
    t.integer  "crop_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "farms", force: :cascade do |t|
    t.string   "farmname",    limit: 255
    t.string   "area",        limit: 255
    t.string   "city",        limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "message",     limit: 65535
    t.integer  "mst_pref_id", limit: 4
  end

  create_table "fields", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "detail",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "area",       limit: 4
    t.integer  "farm_id",    limit: 4
  end

  create_table "memos", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.date     "date"
    t.text     "detail",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "note_id",    limit: 4
  end

  create_table "mst_prefs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "notes", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "field_id",   limit: 4
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",   limit: 255
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.string   "farm_id",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
