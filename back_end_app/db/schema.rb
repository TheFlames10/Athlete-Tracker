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

ActiveRecord::Schema[8.0].define(version: 2024_12_23_193032) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "athlete_workouts", force: :cascade do |t|
    t.integer "athlete_id"
    t.date "date"
    t.string "workout_type"
    t.text "muscles_targeted"
    t.integer "duration_minutes"
    t.string "workout_name"
    t.integer "sets"
    t.integer "reps_per_set"
    t.decimal "weight_per_rep"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "athletes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "team_id"
    t.integer "age"
    t.decimal "height"
    t.decimal "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calorie_intakes", force: :cascade do |t|
    t.integer "athlete_id"
    t.date "date"
    t.string "meal"
    t.decimal "calories"
    t.text "food_items"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "progress_reports", force: :cascade do |t|
    t.integer "athlete_id"
    t.date "date"
    t.decimal "weight"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "coach_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "role"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
