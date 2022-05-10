class Patient < ApplicationRecord
  has_many :appointments,dependent: :destroy
  has_many :physicians, through: :appointments ,dependent: :destroy
  validates :email, presence: true
  validates :name, presence: true
  validates :email, uniqueness: true
end
