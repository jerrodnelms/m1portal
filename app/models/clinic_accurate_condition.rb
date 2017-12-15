class ClinicAccurateCondition < ActiveRecord::Base
  belongs_to :clinic
  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      ClinicAccurateCondition.create! row.to_hash
    end
  end
end
