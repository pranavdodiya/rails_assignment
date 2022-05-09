class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
  validates :email, presence: true
  validates :name, presence: true
  validates :email, uniqueness: true
end
