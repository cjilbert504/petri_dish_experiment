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

ActiveRecord::Schema[7.0].define(version: 2022_04_16_150632) do
  create_table "petri_dish_query_specimen", force: :cascade do |t|
    t.string "sql"
    t.string "name"
    t.string "connection"
    t.string "binds"
    t.string "type_casted_binds"
    t.string "statment_name"
    t.string "cached"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "petri_dish_request_specimen", force: :cascade do |t|
    t.string "controller"
    t.string "action"
    t.string "params"
    t.string "headers"
    t.string "format"
    t.string "method"
    t.string "path"
    t.string "request"
    t.string "response"
    t.string "status"
    t.string "view_runtime"
    t.string "db_runtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
