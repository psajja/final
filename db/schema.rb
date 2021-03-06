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

ActiveRecord::Schema.define(version: 0) do

  create_table "fuels", force: :cascade do |t|
    t.string "availability"
    t.string "linktoimage"
    t.string "fueltype"
  end

  create_table "generators", force: :cascade do |t|
    t.string  "queue"
    t.string  "project_name"
    t.integer "mw"
    t.string  "inservice_date"
    t.string  "county"
    t.integer "fuel_id"
    t.integer "state_id"
  end

  add_index "generators", ["fuel_id"], name: "index_generators_on_fuel_id"
  add_index "generators", ["state_id"], name: "index_generators_on_state_id"

  create_table "rtos", force: :cascade do |t|
    t.string "generator_id"
    t.string "state_id"
  end

  add_index "rtos", ["generator_id"], name: "index_rtos_on_generator_id"
  add_index "rtos", ["state_id"], name: "index_rtos_on_state_id"

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "shortname"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.boolean "admin",           default: false
    t.string  "password_digest"
  end

end
