class CreateShfOmittedConditions < ActiveRecord::Migration
  def change
    create_table :shf_omitted_conditions do |t|
      t.string :name
      t.references :surg_hosp_form, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
