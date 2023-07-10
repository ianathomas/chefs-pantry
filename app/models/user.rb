class User < ApplicationRecord
  has_many :my_pantry_items
  has_many :ingredients, through: :my_pantry_items
end
