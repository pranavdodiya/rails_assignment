class Industry < ApplicationRecord
    has_and_belongs_to_many :sectors
    validates :name, presence: true
    validates :email, uniqueness: true

    before_create :generate_unique_id

    private
    def generate_unique_id
        begin
        self.registration_number = SecureRandom.random_number(1000)
        end while Industry.where(registration_number: self.registration_number).exists?
    end

end
