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

ActiveRecord::Schema[7.0].define(version: 2023_09_10_014948) do
  create_table "user_account_lockings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "failed_attempts"
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_account_lockings_on_user_id"
  end

  create_table "user_account_trackings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "sign_in_count"
    t.datetime "last_sign_in_at"
    t.datetime "current_sign_in_at"
    t.string "last_sign_in_ip"
    t.string "current_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_account_trackings_on_user_id"
  end

  create_table "user_password_reset_requests", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_password_reset_requests_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "user_handle_name"
    t.text "user_profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "user_registration_authentications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_registration_authentications_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_account_lockings", "users"
  add_foreign_key "user_account_trackings", "users"
  add_foreign_key "user_password_reset_requests", "users"
  add_foreign_key "user_profiles", "users"
  add_foreign_key "user_registration_authentications", "users"
end
