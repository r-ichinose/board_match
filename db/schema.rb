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

ActiveRecord::Schema[7.0].define(version: 2024_12_31_050814) do
  create_table "boards", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.text "info", null: false
    t.integer "board_type", null: false
    t.string "brand", null: false
    t.integer "price", null: false
    t.integer "size", null: false
    t.integer "weight", null: false
    t.integer "flex", null: false
    t.integer "style", null: false
    t.integer "level", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "board_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_favorites_on_board_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "recs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "board_id", null: false
    t.float "score", null: false
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_recs_on_board_id"
    t.index ["user_id"], name: "index_recs_on_user_id"
  end

  create_table "reviews", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "board_id", null: false
    t.integer "rating", null: false
    t.text "comment", null: false
    t.integer "user_exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_reviews_on_board_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.integer "height", null: false
    t.integer "weight", null: false
    t.integer "experience_level", null: false
    t.integer "style", null: false
    t.integer "budget", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "favorites", "boards"
  add_foreign_key "favorites", "users"
  add_foreign_key "recs", "boards"
  add_foreign_key "recs", "users"
  add_foreign_key "reviews", "boards"
end
