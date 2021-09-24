class User < ApplicationRecord
  has_many :goals, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { in: 3..244 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
end
