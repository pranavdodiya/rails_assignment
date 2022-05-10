class Physician < ApplicationRecord
  has_many :appointments,dependent: :destroy
  has_many :patients, through: :appointments,dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  before_create :generate_unique_id

  private
  def generate_unique_id
    begin
      self.unique_id = SecureRandom.random_number(1000)
    end while Physician.where(unique_id: self.unique_id).exists?
  end

    
end
