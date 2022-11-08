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

ActiveRecord::Schema[7.0].define(version: 2022_10_12_142924) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "email", null: false
    t.integer "age"
    t.integer "phone_number"
    t.string "location"
    t.string "address"
    t.string "car_model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_providers_id", null: false
    t.bigint "subscription_id", null: false
    t.index ["service_providers_id"], name: "index_customers_on_service_providers_id"
    t.index ["subscription_id"], name: "index_customers_on_subscription_id"
  end

  create_table "service_providers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "age"
    t.integer "phone_number"
    t.string "location"
    t.string "address"
    t.string "skill_level"
    t.boolean "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "card_number"
    t.datetime "expiry_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customers", "service_providers", column: "service_providers_id"
  add_foreign_key "customers", "subscriptions"
end
