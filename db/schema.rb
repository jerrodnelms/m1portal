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

ActiveRecord::Schema.define(version: 20171215112702) do

  create_table "account_pat_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "account_pat_types", ["surg_hosp_form_id"], name: "index_account_pat_types_on_surg_hosp_form_id"

  create_table "acct_pat_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "acct_pat_types", ["surg_hosp_form_id"], name: "index_acct_pat_types_on_surg_hosp_form_id"

  create_table "clinic_accurate_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clinic_accurate_conditions", ["clinic_id"], name: "index_clinic_accurate_conditions_on_clinic_id"

  create_table "clinic_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clinic_conditions", ["clinic_id"], name: "index_clinic_conditions_on_clinic_id"

  create_table "clinic_cr_forms", force: :cascade do |t|
    t.integer  "clinic_id"
    t.integer  "mysis_id"
    t.string   "any_pertinent_conditions"
    t.integer  "clinic_doc_id"
    t.integer  "num_visits_year"
    t.integer  "clinic_omitted_condition_id"
    t.string   "clinic_omitted_condition_detail"
    t.integer  "clinic_misdiagnosed_condition_id"
    t.string   "clinic_misdiagnosed_condition_detail"
    t.integer  "clinic_accurate_condition_id"
    t.string   "additional_providers"
    t.integer  "actual_condition_tally"
    t.integer  "captured_condition_tally"
    t.integer  "misdiagnosed_condition_tally"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "clinic_cr_forms", ["clinic_accurate_condition_id"], name: "index_clinic_cr_forms_on_clinic_accurate_condition_id"
  add_index "clinic_cr_forms", ["clinic_doc_id"], name: "index_clinic_cr_forms_on_clinic_doc_id"
  add_index "clinic_cr_forms", ["clinic_id"], name: "index_clinic_cr_forms_on_clinic_id"
  add_index "clinic_cr_forms", ["clinic_misdiagnosed_condition_id"], name: "index_clinic_cr_forms_on_clinic_misdiagnosed_condition_id"
  add_index "clinic_cr_forms", ["clinic_omitted_condition_id"], name: "index_clinic_cr_forms_on_clinic_omitted_condition_id"

  create_table "clinic_docs", force: :cascade do |t|
    t.string   "name"
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clinic_docs", ["clinic_id"], name: "index_clinic_docs_on_clinic_id"

  create_table "clinic_misdiagnosed_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clinic_misdiagnosed_conditions", ["clinic_id"], name: "index_clinic_misdiagnosed_conditions_on_clinic_id"

  create_table "clinic_omitted_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clinic_omitted_conditions", ["clinic_id"], name: "index_clinic_omitted_conditions_on_clinic_id"

  create_table "clinics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "folders", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "folder_id"
    t.integer "group_id"
    t.boolean "can_create"
    t.boolean "can_read"
    t.boolean "can_update"
    t.boolean "can_delete"
  end

  create_table "share_links", force: :cascade do |t|
    t.string   "emails"
    t.string   "link_token"
    t.datetime "link_expires_at"
    t.integer  "user_file_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "message"
    t.integer  "user_id"
  end

  create_table "shf_actual_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "shf_actual_conditions", ["surg_hosp_form_id"], name: "index_shf_actual_conditions_on_surg_hosp_form_id"

  create_table "shf_dnmc_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "shf_dnmc_conditions", ["surg_hosp_form_id"], name: "index_shf_dnmc_conditions_on_surg_hosp_form_id"

  create_table "shf_omitted_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "shf_omitted_conditions", ["surg_hosp_form_id"], name: "index_shf_omitted_conditions_on_surg_hosp_form_id"

  create_table "surg_hosp_cr_forms", force: :cascade do |t|
    t.integer  "surg_hosp_form_id"
    t.integer  "surg_hosp_form_hospital_id"
    t.string   "reviewer_email_address"
    t.integer  "account_pat_num"
    t.integer  "account_pat_type_id"
    t.date     "admit_date"
    t.date     "discharge_date"
    t.string   "any_pertinent_conditions"
    t.integer  "surg_hosp_form_doc_id"
    t.integer  "shf_omitted_condition_id"
    t.string   "shf_omitted_condition_detail"
    t.integer  "shf_dnmc_condition_id"
    t.string   "shf_dnmc_condition_detail"
    t.integer  "shf_actual_condition_id"
    t.string   "additional_provider"
    t.integer  "actual_conditions_tally"
    t.integer  "captured_conditions_tally"
    t.integer  "dnmc_conditions_tally"
    t.string   "additional_notes"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "surg_hosp_cr_forms", ["account_pat_type_id"], name: "index_surg_hosp_cr_forms_on_account_pat_type_id"
  add_index "surg_hosp_cr_forms", ["shf_actual_condition_id"], name: "index_surg_hosp_cr_forms_on_shf_actual_condition_id"
  add_index "surg_hosp_cr_forms", ["shf_dnmc_condition_id"], name: "index_surg_hosp_cr_forms_on_shf_dnmc_condition_id"
  add_index "surg_hosp_cr_forms", ["shf_omitted_condition_id"], name: "index_surg_hosp_cr_forms_on_shf_omitted_condition_id"
  add_index "surg_hosp_cr_forms", ["surg_hosp_form_doc_id"], name: "index_surg_hosp_cr_forms_on_surg_hosp_form_doc_id"
  add_index "surg_hosp_cr_forms", ["surg_hosp_form_hospital_id"], name: "index_surg_hosp_cr_forms_on_surg_hosp_form_hospital_id"
  add_index "surg_hosp_cr_forms", ["surg_hosp_form_id"], name: "index_surg_hosp_cr_forms_on_surg_hosp_form_id"

  create_table "surg_hosp_form_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "surg_hosp_form_conditions", ["surg_hosp_form_id"], name: "index_surg_hosp_form_conditions_on_surg_hosp_form_id"

  create_table "surg_hosp_form_docs", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "surg_hosp_form_docs", ["surg_hosp_form_id"], name: "index_surg_hosp_form_docs_on_surg_hosp_form_id"

  create_table "surg_hosp_form_hospitals", force: :cascade do |t|
    t.string   "name"
    t.integer  "surg_hosp_form_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "surg_hosp_form_hospitals", ["surg_hosp_form_id"], name: "index_surg_hosp_form_hospitals_on_surg_hosp_form_id"

  create_table "surg_hosp_forms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surgery_conditions", force: :cascade do |t|
    t.string   "name"
    t.integer  "surgery_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "surgery_conditions", ["surgery_type_id"], name: "index_surgery_conditions_on_surgery_type_id"

  create_table "surgery_docs", force: :cascade do |t|
    t.string   "name"
    t.integer  "surgery_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "surgery_docs", ["surgery_type_id"], name: "index_surgery_docs_on_surgery_type_id"

  create_table "surgery_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_files", force: :cascade do |t|
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "folder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "hashed_password"
    t.string   "password_salt"
    t.boolean  "is_admin"
    t.string   "remember_token"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "signup_token"
    t.datetime "signup_token_expires_at"
  end

  add_index "users", ["signup_token"], name: "index_users_on_signup_token"

end
