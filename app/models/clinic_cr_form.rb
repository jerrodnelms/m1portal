class ClinicCrForm < ActiveRecord::Base
  belongs_to :clinic
  belongs_to :clinic_doc
  belongs_to :clinic_omitted_condition
  belongs_to :clinic_misdiagnosed_condition
  belongs_to :clinic_accurate_condition
end
