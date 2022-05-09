class Drug < ApplicationRecord
  belongs_to :classification
  has_many :drug_users
  has_many :users, through: :drug_users
end
