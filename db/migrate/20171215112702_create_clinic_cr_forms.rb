class CreateClinicCrForms < ActiveRecord::Migration
  def change
    drop_table :clinic_cr_forms
    create_table :clinic_cr_forms do |t|
      t.references :clinic, index: true, foreign_key: true
      t.integer :mysis_id
      t.string :any_pertinent_conditions
      t.references :clinic_doc, index: true, foreign_key: true
      t.integer :num_visits_year
      t.references :clinic_omitted_condition, index: true, foreign_key: true
      t.string :clinic_omitted_condition_detail
      t.references :clinic_misdiagnosed_condition, index: true, foreign_key: true
      t.string :clinic_misdiagnosed_condition_detail
      t.references :clinic_accurate_condition, index: true, foreign_key: true
      t.string :additional_providers
      t.integer :actual_condition_tally
      t.integer :captured_condition_tally
      t.integer :misdiagnosed_condition_tally

      t.timestamps null: false
    end
  end
end
