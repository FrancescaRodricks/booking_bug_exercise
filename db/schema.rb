# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160513134052) do

  create_table "classrooms", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.integer  "student_id", limit: 4
    t.integer  "teacher_id", limit: 4
    t.integer  "school_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "classrooms", ["school_id"], name: "index_classrooms_on_school_id", using: :btree
  add_index "classrooms", ["student_id"], name: "index_classrooms_on_student_id", using: :btree
  add_index "classrooms", ["teacher_id"], name: "index_classrooms_on_teacher_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string  "name",    limit: 25, null: false
    t.integer "goals",   limit: 4,  null: false
    t.integer "team_id", limit: 4,  null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name",                  limit: 255, null: false
    t.integer  "head_of_department_id", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "teachers", ["head_of_department_id"], name: "index_teachers_on_head_of_department_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string "name", limit: 25, null: false
  end

end
