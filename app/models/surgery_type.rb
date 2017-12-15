class SurgeryType < ActiveRecord::Base
  has_many :surgery_docs
  validates :name, presence: true
end
