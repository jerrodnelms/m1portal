class ClinicMisdiagnosedCondition < ActiveRecord::Base
  belongs_to :clinic
  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      ClinicMisdiagnosedCondition.create! row.to_hash
    end
  end
end
