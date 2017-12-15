class CreateSurgeryDocs < ActiveRecord::Migration
  def change
    drop_table :surgery_docs
    create_table :surgery_docs do |t|
      t.string :name
      t.references :surgery_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
