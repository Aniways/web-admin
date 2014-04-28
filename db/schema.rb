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

ActiveRecord::Schema.define(version: 20140427114057) do

  create_table "icons", force: true do |t|
    t.string  "name"
    t.integer "pack_id"
    t.binary  "asset_ldpi"
    t.binary  "asset_mdpi"
    t.binary  "asset_hdpi"
    t.binary  "asset_xhdpi"
    t.binary  "asset_xxhdpi"
    t.binary  "asset_non_retina"
    t.binary  "asset_retina"
    t.string  "md5_ldpi"
    t.string  "md5_mdpi"
    t.string  "md5_hdpi"
    t.string  "md5_xhdpi"
    t.string  "md5_xxhdpi"
    t.string  "md5_non_retina"
    t.string  "md5_retina"
    t.string  "unicode_representation"
    t.binary  "is_emoji"
    t.binary  "is_locked_default"
    t.binary  "is_default"
    t.integer "index_in_pack_default"
    t.binary  "is_new"
    t.string  "category"
  end

  create_table "packs", force: true do |t|
    t.string   "name"
    t.integer  "style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "styles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
