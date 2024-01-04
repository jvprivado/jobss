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

ActiveRecord::Schema[7.0].define(version: 2023_12_23_061811) do
  create_table "posts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "uid"
    t.string "email"
    t.string "avatar"
    t.string "topimage"
    t.string "avatarhash"
    t.string "topimagehash"
    t.string "searchstatus"
    t.string "password"
    t.string "cvlink"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "roletype"
    t.string "website"
    t.string "github"
    t.string "linkedin"
    t.string "stackoverflow"
    t.string "twitter"
    t.string "mastodon"
    t.string "schedulinglink"
    t.string "emailnotifications"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sures", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
