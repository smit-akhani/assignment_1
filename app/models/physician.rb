class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    
    validates :name, presence: true
    validates :email, uniqueness: true

    before_validation :downcase_email
    after_create :generate_id

    private
    def downcase_email
        self.email.downcase!
    end

    def generate_id
        self.unique_id = "P" + self.id.to_s
    end
end
