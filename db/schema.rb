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

ActiveRecord::Schema.define(version: 2019_10_08_045109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conditions", force: :cascade do |t|
    t.float "weight"
    t.float "body_fat_percentage"
    t.integer "menstruation"
    t.float "body_temperature"
    t.integer "feeling"
    t.integer "skin"
    t.bigint "user_id", null: false
    t.bigint "daily_life_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["daily_life_id"], name: "index_conditions_on_daily_life_id"
    t.index ["user_id"], name: "index_conditions_on_user_id"
  end

  create_table "daily_lives", force: :cascade do |t|
    t.datetime "wake_up_time"
    t.datetime "bed_time"
    t.integer "feeling"
    t.text "comment"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_daily_lives_on_user_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.text "comment"
    t.bigint "user_id", null: false
    t.bigint "daily_life_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["daily_life_id"], name: "index_meals_on_daily_life_id"
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "stools", force: :cascade do |t|
    t.integer "softness"
    t.integer "color"
    t.text "comment"
    t.integer "feeling"
    t.integer "amount"
    t.integer "smell"
    t.bigint "user_id", null: false
    t.bigint "daily_life_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["daily_life_id"], name: "index_stools_on_daily_life_id"
    t.index ["user_id"], name: "index_stools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.date "birthday"
    t.boolean "black_list"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "conditions", "daily_lives"
  add_foreign_key "conditions", "users"
  add_foreign_key "daily_lives", "users"
  add_foreign_key "meals", "daily_lives"
  add_foreign_key "meals", "users"
  add_foreign_key "stools", "daily_lives"
  add_foreign_key "stools", "users"
end
