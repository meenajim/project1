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

ActiveRecord::Schema.define(version: 20180403115153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instructors", force: :cascade do |t|
    t.text "name"
    t.text "qualification"
    t.text "instrument"
    t.text "description"
    t.integer "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "photo"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "instructor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performances", force: :cascade do |t|
    t.integer "student_id"
    t.date "performance_date"
    t.text "description"
    t.text "media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
  end

  create_table "students", force: :cascade do |t|
    t.text "name"
    t.text "phone"
    t.date "dob"
    t.integer "instructor_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.string "password_digest"
    t.text "phone"
    t.text "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
