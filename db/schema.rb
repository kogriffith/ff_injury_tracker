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

ActiveRecord::Schema.define(version: 2020_10_29_200106) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "injuries", force: :cascade do |t|
    t.bigint "player_id"
    t.string "name", null: false
    t.string "body_location", null: false
    t.string "injury_type", null: false
    t.string "severity", null: false
    t.date "occured", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "turf_type"
    t.integer "expected_recovery_time"
    t.boolean "contact"
    t.index ["player_id"], name: "index_injuries_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "team_id"
    t.string "name", null: false
    t.string "player_type", null: false
    t.string "position", null: false
    t.date "birthday", null: false
    t.integer "time_in_league", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "conference"
    t.string "division"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.string "conference"
    t.string "division"
    t.string "abbreviation"
  end

end
