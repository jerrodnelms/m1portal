class CreateSurgeryConditions < ActiveRecord::Migration
  def change
    create_table :surgery_conditions do |t|
      t.string :name
      t.references :surgery_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
