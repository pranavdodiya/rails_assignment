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

ActiveRecord::Schema[7.0].define(version: 2022_05_05_115607) do
  create_table "appointments", force: :cascade do |t|
    t.date "appointment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "physician_id", null: false
    t.integer "patient_id", null: false
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "registration_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_industries_on_email", unique: true
  end

  create_table "industries_sectors", id: false, force: :cascade do |t|
    t.integer "industry_id", null: false
    t.integer "sector_id", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_patients_on_email", unique: true
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "unique_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_physicians_on_email", unique: true
    t.index ["unique_id"], name: "index_physicians_on_unique_id", unique: true
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "physicians"
end
