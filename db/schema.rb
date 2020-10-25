# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_24_232520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferences", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.bigint "conference_id"
    t.string "name", null: false
    t.index ["conference_id"], name: "index_divisions_on_conference_id"
  end

  create_table "injuries", force: :cascade do |t|
    t.bigint "player_id"
    t.string "name", null: false
    t.string "body_location", null: false
    t.string "type", null: false
    t.string "severity", null: false
    t.date "occured", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_injuries_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "team_id"
    t.string "name", null: false
    t.string "type", null: false
    t.string "position", null: false
    t.date "birthday", null: false
    t.integer "time_in_league", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "division_id"
    t.string "name", null: false
    t.index ["division_id"], name: "index_teams_on_division_id"
  end

end
