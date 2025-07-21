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

ActiveRecord::Schema[8.0].define(version: 2025_07_16_132304) do
  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.integer "price"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_menu_ratings", force: :cascade do |t|
    t.integer "review_id", null: false
    t.integer "menu_item_id", null: false
    t.integer "rating"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_item_id"], name: "index_review_menu_ratings_on_menu_item_id"
    t.index ["review_id"], name: "index_review_menu_ratings_on_review_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "customer_name"
    t.integer "overall_rating"
    t.text "content"
    t.datetime "visited_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "review_menu_ratings", "menu_items"
  add_foreign_key "review_menu_ratings", "reviews"
end
