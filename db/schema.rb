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

ActiveRecord::Schema[7.0].define(version: 2022_11_28_205515) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buddies", force: :cascade do |t|
    t.string "name"
    t.integer "charisma"
    t.integer "money"
    t.integer "front_end"
    t.integer "back_end"
    t.integer "stamina"
    t.integer "luck"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "choices", force: :cascade do |t|
    t.string "action"
    t.integer "next_scene_id"
    t.integer "charisma"
    t.integer "money"
    t.integer "front_end"
    t.integer "back_end"
    t.integer "stamina"
    t.integer "luck"
    t.bigint "scene_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scene_id"], name: "index_choices_on_scene_id"
  end

  create_table "pcs", force: :cascade do |t|
    t.string "pc_name"
    t.string "gender"
    t.string "age"
    t.string "integer"
    t.integer "charisma"
    t.integer "money"
    t.integer "front_end"
    t.integer "back_end"
    t.integer "stamina"
    t.integer "luck"
    t.bigint "user_id", null: false
    t.bigint "scene_id", null: false
    t.boolean "lazy"
    t.boolean "studious"
    t.boolean "genius"
    t.boolean "neutral"
    t.boolean "shy"
    t.boolean "outgoing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scene_id"], name: "index_pcs_on_scene_id"
    t.index ["user_id"], name: "index_pcs_on_user_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.string "title"
    t.string "npc_name"
    t.text "story"
    t.bigint "buddy_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buddy_id"], name: "index_scenes_on_buddy_id"
    t.index ["user_id"], name: "index_scenes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "choices", "scenes"
  add_foreign_key "pcs", "scenes"
  add_foreign_key "pcs", "users"
  add_foreign_key "scenes", "buddies"
  add_foreign_key "scenes", "users"
end
