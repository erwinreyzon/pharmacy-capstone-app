class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :drug_users
  has_many :drugs, through: :drug_users
end
