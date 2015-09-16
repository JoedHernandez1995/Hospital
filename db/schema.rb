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

ActiveRecord::Schema.define(version: 20150916051117) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "blood_chemistry_tests", force: :cascade do |t|
    t.float    "glucose"
    t.float    "urea"
    t.float    "uric_acid"
    t.float    "creatinine"
    t.float    "cholesterol"
    t.float    "hdl"
    t.float    "ldl"
    t.float    "triglycerides"
    t.float    "got"
    t.float    "gpt"
    t.float    "ggt"
    t.float    "alkaline_phosphatase"
    t.float    "calcium"
    t.float    "iron"
    t.float    "sodium"
    t.float    "bilirubin"
    t.date     "test_date"
    t.integer  "patient_id"
    t.integer  "microbiologist_id"
    t.float    "exam_cost"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "blood_chemistry_tests", ["microbiologist_id"], name: "index_blood_chemistry_tests_on_microbiologist_id"
  add_index "blood_chemistry_tests", ["patient_id"], name: "index_blood_chemistry_tests_on_patient_id"

  create_table "blood_tests", force: :cascade do |t|
    t.date     "examination_date"
    t.float    "rbc"
    t.float    "hemoglobin"
    t.float    "vcm"
    t.float    "hcm"
    t.float    "lymphocytes"
    t.float    "leukocytes"
    t.float    "neutrophils"
    t.float    "eosinophils"
    t.float    "platelets"
    t.float    "vsg"
    t.integer  "patient_id"
    t.integer  "microbiologist_id"
    t.float    "exam_cost"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "blood_tests", ["microbiologist_id"], name: "index_blood_tests_on_microbiologist_id"
  add_index "blood_tests", ["patient_id"], name: "index_blood_tests_on_patient_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "doctor_id"
    t.string   "name"
    t.string   "lastname"
    t.string   "specialty"
    t.string   "undergraduate_university"
    t.string   "specialty_university"
    t.date     "birth_date"
    t.string   "email"
    t.float    "visit_cost"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "hospitalizations", force: :cascade do |t|
    t.integer  "days_hospitalized"
    t.integer  "room_number"
    t.date     "admission_date"
    t.integer  "doctor_id"
    t.float    "cost"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "hospitalizations", ["doctor_id"], name: "index_hospitalizations_on_doctor_id"

  create_table "illnesses", force: :cascade do |t|
    t.string   "main_symptom"
    t.date     "initial_date"
    t.string   "pain_soother"
    t.string   "pain_intensifier"
    t.time     "peek_hour"
    t.integer  "patient_id"
    t.integer  "hospitalization_id"
    t.integer  "visit_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "illnesses", ["hospitalization_id"], name: "index_illnesses_on_hospitalization_id"
  add_index "illnesses", ["patient_id"], name: "index_illnesses_on_patient_id"
  add_index "illnesses", ["visit_id"], name: "index_illnesses_on_visit_id"

  create_table "microbiologists", force: :cascade do |t|
    t.string   "microbiologist_id"
    t.string   "name"
    t.string   "lastname"
    t.date     "birth_date"
    t.string   "undergraduate_university"
    t.string   "postgraduate_university"
    t.string   "postgraduate_major"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "nurses", force: :cascade do |t|
    t.string   "nurse_id"
    t.string   "name"
    t.string   "lastname"
    t.string   "undergraduate_university"
    t.float    "hourly_wage"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "patient_id"
    t.string   "name"
    t.string   "lastname"
    t.date     "registry_date"
    t.text     "address"
    t.string   "blood_type"
    t.string   "sex"
    t.string   "marital_status"
    t.date     "birth_date"
    t.string   "phone_number"
    t.string   "cellphone_number"
    t.string   "email"
    t.string   "emergency_contact"
    t.string   "occupation"
    t.text     "allergies"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "visits", force: :cascade do |t|
    t.date     "visit_date"
    t.boolean  "hospitalized"
    t.integer  "doctor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "visits", ["doctor_id"], name: "index_visits_on_doctor_id"

end
