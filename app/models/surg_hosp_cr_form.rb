class SurgHospCrForm < ActiveRecord::Base
  belongs_to :surg_hosp_form
  belongs_to :surg_hosp_form_hospital
  belongs_to :account_pat_type
  belongs_to :surg_hosp_form_doc
  belongs_to :shf_omitted_condition
  belongs_to :shf_dnmc_condition
  belongs_to :shf_actual_condition
end
