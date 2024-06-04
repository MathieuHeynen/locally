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

ActiveRecord::Schema[7.1].define(version: 2024_06_04_121510) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localler_activities", force: :cascade do |t|
    t.bigint "activity_id", null: false
    t.bigint "localler_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_localler_activities_on_activity_id"
    t.index ["localler_id"], name: "index_localler_activities_on_localler_id"
  end

  create_table "locallers", force: :cascade do |t|
    t.string "description"
    t.boolean "availability"
    t.string "location"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locallers_on_user_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "user_id", null: false
    t.bigint "localler_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["localler_id"], name: "index_meetings_on_localler_id"
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chat_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "bio"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "localler_activities", "activities"
  add_foreign_key "localler_activities", "locallers"
  add_foreign_key "locallers", "users"
  add_foreign_key "meetings", "locallers"
  add_foreign_key "meetings", "users"
  add_foreign_key "messages", "chats"
  add_foreign_key "messages", "users"
end
