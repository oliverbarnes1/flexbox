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

ActiveRecord::Schema.define(version: 2021_11_23_135953) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"


  create_table "favourite_workouts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "favourite", default: false
    t.index ["user_id"], name: "index_favourite_workouts_on_user_id"
    t.index ["workout_id"], name: "index_favourite_workouts_on_workout_id"

    
  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "sport"
    t.string "difficulty"
    t.string "description"
    t.string "muscle_group"
    t.string "exercise_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false

  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "sport"
    t.string "difficulty"
    t.integer "workout_duration"
    t.bigint "user_id", null: false
    t.string "equipment"
    t.string "muscle_group"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_workouts_on_user_id"
  end

  add_foreign_key "favourite_workouts", "users"
  add_foreign_key "favourite_workouts", "workouts"
  add_foreign_key "workouts", "users"
end
