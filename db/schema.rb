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

ActiveRecord::Schema.define(version: 20220623110821) do

  create_table "categorization", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "item_id",    null: false
  end

  create_table "items", force: :cascade do |t|
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id"
    t.decimal  "price",         precision: 5, scale: 2
    t.integer  "supplier_id"
    t.string   "supplier_type"
  end

  add_index "items", ["supplier_type", "supplier_id"], name: "index_items_on_supplier_type_and_supplier_id"
  add_index "items", ["user_id"], name: "index_items_on_user_id"

  create_table "items_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "item_id",    null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "relationships", ["role_id"], name: "index_relationships_on_role_id"
  add_index "relationships", ["users_id"], name: "index_relationships_on_users_id"

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "course_objectives"
    t.string "full_name"
  end

  add_index "students", ["full_name"], name: "index_students_on_full_name"

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
