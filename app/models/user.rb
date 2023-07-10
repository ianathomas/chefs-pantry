class User < ApplicationRecord
  has_many :my_pantry_items
  has_many :ingredients, through: :my_pantry_items
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
