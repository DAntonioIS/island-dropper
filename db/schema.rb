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

ActiveRecord::Schema.define(version: 20180316135957) do

  create_table "bookings", force: :cascade do |t|
    t.string "delivery_id"
    t.string "status"
    t.datetime "delivery_create_date"
    t.decimal "delivery_distance"
    t.string "item_description"
    t.integer "delivery_reference"
    t.string "delivery_instructions"
    t.boolean "itemneed_purchased", default: false
    t.decimal "delivery_price"
    t.string "customer_reference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
  end

  create_table "delivery_details", force: :cascade do |t|
    t.string "delivery_name"
    t.string "delivery_address"
    t.string "delivery_phone_number"
    t.datetime "delivery_requested_time"
    t.datetime "delivery_best_possible_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_id"
    t.index ["booking_id"], name: "index_delivery_details_on_booking_id"
  end

  create_table "tracking_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "customer_tracking"
    t.string "dispatcher_tracking"
    t.integer "booking_id"
    t.index ["booking_id"], name: "index_tracking_details_on_booking_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "business_name"
    t.string "contact_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
