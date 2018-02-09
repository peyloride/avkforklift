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

ActiveRecord::Schema.define(version: 20180209210457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.date "date"
    t.integer "price"
    t.text "event"
    t.bigint "forklift_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forklift_id"], name: "index_events_on_forklift_id"
  end

  create_table "forklifts", force: :cascade do |t|
    t.string "plate"
    t.integer "brand"
    t.integer "lifting_capacity"
    t.integer "production_year"
    t.integer "lifting_height"
    t.integer "forklift_type"
    t.integer "price"
    t.string "model"
    t.integer "elevator_type"
    t.integer "wheels"
    t.string "accumulator"
    t.string "system"
    t.string "made_in"
    t.integer "attachment"
    t.integer "status"
    t.integer "purchase_price"
    t.date "purchase_date"
    t.integer "expenses"
    t.integer "sale_price"
    t.date "sale_date"
    t.integer "profit"
    t.integer "waiting_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "forklifts"
end
