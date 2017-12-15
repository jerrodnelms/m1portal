class ShfOmittedCondition < ActiveRecord::Base
  belongs_to :surg_hosp_form
  has_many :surg_hosp_cr_forms
  def self.import(file)
    CSV.foreach(file.path, headers:true) do |row|
      ShfOmittedCondition.create! row.to_hash
    end
  end
end
