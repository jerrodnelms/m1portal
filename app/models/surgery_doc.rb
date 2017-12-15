class SurgeryDoc < ActiveRecord::Base
  belongs_to :surgery_type
  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      SurgeryDoc.create! row.to_hash
    end
  end
end

