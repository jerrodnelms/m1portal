class CreateClinicAccurateConditions < ActiveRecord::Migration
  def change
    create_table :clinic_accurate_conditions do |t|
      t.string :name
      t.references :clinic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
