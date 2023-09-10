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

ActiveRecord::Schema[7.0].define(version: 2023_09_10_072056) do
  create_table "answers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers_tags", force: :cascade do |t|
    t.integer "answer_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title"
    t.text "description"
    t.datetime "started_at"
    t.datetime "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "participations", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_participations_on_event_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "question_tags", force: :cascade do |t|
    t.integer "question_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id"
    t.string "title"
    t.text "question_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reactions", force: :cascade do |t|
    t.integer "answer_id"
    t.integer "user_id"
    t.integer "stamp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stamps", force: :cascade do |t|
    t.integer "stamp_id"
    t.integer "reaction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "user_registrations", force: :cascade do |t|
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "answers_tags", "answers"
  add_foreign_key "answers_tags", "tags"
  add_foreign_key "events", "users"
  add_foreign_key "events", "users"
  add_foreign_key "participations", "events"
  add_foreign_key "participations", "users"
  add_foreign_key "questions", "users"
  add_foreign_key "reactions", "answers"
  add_foreign_key "reactions", "users"
  add_foreign_key "stamps", "reactions"
  add_foreign_key "user_account_lockings", "users"
  add_foreign_key "user_account_trackings", "users"
  add_foreign_key "user_password_reset_requests", "users"
  add_foreign_key "user_profiles", "users"
  add_foreign_key "user_registration_authentications", "users"
end
