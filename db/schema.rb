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

ActiveRecord::Schema.define(version: 20170405153952) do

  create_table "websites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "url"
    t.text     "content",            limit: 65535
    t.string   "status"
    t.datetime "crawl_started_at"
    t.datetime "crawl_completed_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["url"], name: "index_websites_on_url", unique: true, using: :btree
  end

end
