class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true

    before_validation :downcase_email
    after_create :generate_id

    private
    def downcase_email
        self.email.downcase!
    end

    def generate_id
        self.update_attribute(:unique_id, ("P" + (1000 + self.id).to_s))
    end
end
