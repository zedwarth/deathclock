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

ActiveRecord::Schema.define(version: 20140222043043) do

  create_table "results", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "current_age"
    t.integer  "death_age"
    t.string   "location"
    t.float    "location_long"
    t.float    "location_lat"
    t.string   "diet"
    t.string   "outlook"
    t.string   "sleep"
    t.string   "handed"
    t.string   "sport_vid"
    t.string   "beer_liq"
    t.string   "rep_dem"
    t.string   "dirty_rainey"
    t.string   "sega_nin"
    t.string   "ruby_js"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
