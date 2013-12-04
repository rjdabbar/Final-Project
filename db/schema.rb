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

ActiveRecord::Schema.define(version: 20131204000502) do

  create_table "players", force: true do |t|
    t.string   "steam_id"
    t.string   "persona_name"
    t.string   "profile_url"
    t.string   "avatar"
    t.string   "avatar_medium"
    t.string   "avatar_full"
    t.string   "persona_state"
    t.string   "community_visibility_state"
    t.string   "profile_state"
    t.string   "last_log_off"
    t.string   "comment_permission"
    t.string   "real_name"
    t.string   "primary_clan_id"
    t.string   "time_created"
    t.string   "game_id"
    t.string   "game_server_ip"
    t.string   "game_extra_info"
    t.string   "loc_country_code"
    t.string   "loc_state_code"
    t.string   "loc_city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
