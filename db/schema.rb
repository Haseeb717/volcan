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

ActiveRecord::Schema.define(version: 20180218073116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "altitudes", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fincas", force: :cascade do |t|
    t.integer  "region_id"
    t.integer  "soil_id"
    t.integer  "variety_id"
    t.integer  "altitude_id"
    t.text     "notes"
    t.string   "finca"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["altitude_id"], name: "index_fincas_on_altitude_id", using: :btree
    t.index ["region_id"], name: "index_fincas_on_region_id", using: :btree
    t.index ["soil_id"], name: "index_fincas_on_soil_id", using: :btree
    t.index ["variety_id"], name: "index_fincas_on_variety_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scalas", force: :cascade do |t|
    t.integer  "finca_id"
    t.datetime "harvested"
    t.integer  "qqt"
    t.string   "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["finca_id"], name: "index_scalas_on_finca_id", using: :btree
  end

  create_table "soils", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "varieties", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fincas", "altitudes"
  add_foreign_key "fincas", "regions"
  add_foreign_key "fincas", "soils"
  add_foreign_key "fincas", "varieties"
  add_foreign_key "scalas", "fincas"
end
