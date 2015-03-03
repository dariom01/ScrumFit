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

ActiveRecord::Schema.define(version: 20150303022044) do

  create_table "boards", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "format_id"
  end

  add_index "boards", ["format_id"], name: "index_boards_on_format_id"

  create_table "formats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section_id"
  end

  add_index "notes", ["section_id"], name: "index_notes_on_section_id"

  create_table "sections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "board_id"
  end

  add_index "sections", ["board_id"], name: "index_sections_on_board_id"

  create_table "titles", force: true do |t|
    t.string   "text"
    t.integer  "format_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "titles", ["format_id"], name: "index_titles_on_format_id"

end
