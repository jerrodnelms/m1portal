class SurgeryCondition < ActiveRecord::Base
  belongs_to :surgery_type
  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      SurgeryCondition.create! row.to_hash
    end
  end
end
