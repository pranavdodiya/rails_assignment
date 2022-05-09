class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
  validates :appointment_date, presence: true

end
