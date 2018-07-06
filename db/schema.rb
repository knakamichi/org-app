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

ActiveRecord::Schema.define(version: 20180706014656) do

  create_table "ownerships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "stuff_id"
    t.index ["stuff_id"], name: "index_ownerships_on_stuff_id"
    t.index ["user_id", "stuff_id"], name: "index_ownerships_on_user_id_and_stuff_id", unique: true
    t.index ["user_id"], name: "index_ownerships_on_user_id"
  end

  create_table "stuffs", force: :cascade do |t|
    t.string "name"
    t.string "sub_name1"
    t.string "sub_name2"
    t.string "description1"
    t.string "description2"
    t.string "description3"
    t.string "description4"
    t.string "image"
    t.index ["description1"], name: "index_stuffs_on_description1"
    t.index ["description2"], name: "index_stuffs_on_description2"
    t.index ["description3"], name: "index_stuffs_on_description3"
    t.index ["description4"], name: "index_stuffs_on_description4"
    t.index ["name"], name: "index_stuffs_on_name"
    t.index ["sub_name1"], name: "index_stuffs_on_sub_name1"
    t.index ["sub_name2"], name: "index_stuffs_on_sub_name2"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.integer "grade"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
