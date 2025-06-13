# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_06_13_150034) do
  create_table "daily_activities", force: :cascade do |t|
    t.integer "sport_type_id", null: false
    t.integer "duration", default: 0
    t.integer "set", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_type_id"], name: "index_daily_activities_on_sport_type_id"
  end

  create_table "sport_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "daily_activities", "sport_types"
end
