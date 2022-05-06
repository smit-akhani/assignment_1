class Patient < ApplicationRecord
    has_many :appointments
    has_many :physicians, through: :appointments
    
    validates :name, presence: true
    validates :email, uniqueness: true

    before_validation :downcase_email

    private
    def downcase_email
        self.email.downcase!
    end
end
