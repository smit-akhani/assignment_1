class Industry < ApplicationRecord
    has_and_belongs_to_many :sectors

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
        self.update_attribute(:registration_number, ("REG" + (1000 + self.id).to_s))
    end
end
