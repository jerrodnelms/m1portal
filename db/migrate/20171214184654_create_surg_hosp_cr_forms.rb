class CreateSurgHospCrForms < ActiveRecord::Migration
  def change
    create_table :surg_hosp_cr_forms do |t|
      t.references :surg_hosp_form, index: true, foreign_key: true
      t.references :surg_hosp_form_hospital, index: true, foreign_key: true
      t.string :reviewer_email_address
      t.integer :account_pat_num
      t.references :account_pat_type, index: true, foreign_key: true
      t.date :admit_date
      t.date :discharge_date
      t.string :any_pertinent_conditions
      t.references :surg_hosp_form_doc, index: true, foreign_key: true
      t.references :shf_omitted_condition, index: true, foreign_key: true
      t.string :shf_omitted_condition_detail
      t.references :shf_dnmc_condition, index: true, foreign_key: true
      t.string :shf_dnmc_condition_detail
      t.references :shf_actual_condition, index: true, foreign_key: true
      t.string :additional_provider
      t.integer :actual_conditions_tally
      t.integer :captured_conditions_tally
      t.integer :dnmc_conditions_tally
      t.string :additional_notes

      t.timestamps null: false
    end
  end
end
