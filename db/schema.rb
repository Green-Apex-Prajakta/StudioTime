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

ActiveRecord::Schema.define(version: 2021_12_06_055209) do

  create_table "accounts", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "account_id"
    t.string "email"
    t.integer "mobile_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "features", force: :cascade do |t|
    t.integer "studio_id"
    t.text "amenities"
    t.text "main_equipment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "studio_id"
    t.text "address"
    t.string "building"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "passwords", force: :cascade do |t|
    t.integer "account_id"
    t.integer "new_passwd"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer "studio_id"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "studio_id"
    t.integer "price_per_hr"
    t.boolean "audio_eng_in_rate"
    t.integer "discount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "profile_picture"
    t.string "first_name"
    t.string "last_name"
    t.string "bio"
    t.text "website_url"
    t.text "facebook_url"
    t.text "streaming_platform_url"
    t.string "twitter_handle"
    t.string "instagram_handle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "studio_rules", force: :cascade do |t|
    t.integer "studio_id"
    t.text "studio_rule"
    t.text "cancellation_policy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "studios", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "details"
    t.string "type"
    t.integer "min_booking"
    t.integer "max_studio_occupancy"
    t.time "studio_hrs"
    t.string "advance_time"
    t.text "past_clients"
    t.string "audio_samples"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
