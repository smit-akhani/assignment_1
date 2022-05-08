class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician

  validates :appointment_date, presence: true
end
