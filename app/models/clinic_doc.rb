class ClinicDoc < ActiveRecord::Base
  belongs_to :clinic
  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      ClinicDoc.create! row.to_hash
    end
  end
end
