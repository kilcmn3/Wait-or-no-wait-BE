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

ActiveRecord::Schema.define(version: 2020_05_14_185118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_waitlists", force: :cascade do |t|
    t.bigint "waitlist_id", null: false
    t.bigint "customer_id", null: false
    t.integer "actual_waitTime"
    t.integer "estimate_waitTime"
    t.string "check_inTime"
    t.integer "party_size"
    t.boolean "is_waiting"
    t.boolean "is_texted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_waitlists_on_customer_id"
    t.index ["waitlist_id"], name: "index_customer_waitlists_on_waitlist_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.boolean "reservation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "restaurant_name"
    t.string "restaurant_location"
    t.string "restaurant_contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "waitlists", force: :cascade do |t|
    t.string "waitlist_date"
    t.bigint "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_waitlists_on_owner_id"
  end

  add_foreign_key "customer_waitlists", "customers"
  add_foreign_key "customer_waitlists", "waitlists"
  add_foreign_key "waitlists", "owners"
end
