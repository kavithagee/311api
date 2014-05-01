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

ActiveRecord::Schema.define(version: 20140501034035) do

  create_table "case311s", force: true do |t|
    t.boolean  "needs_recoding"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.string   "category"
    t.string   "request_details"
    t.string   "source"
    t.string   "address"
    t.string   "request_type"
    t.string   "status"
    t.datetime "updated"
    t.string   "media_url"
    t.string   "neighborhood"
    t.datetime "closed"
    t.integer  "supervisor_district"
    t.string   "responsible_agency"
    t.datetime "opened"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
