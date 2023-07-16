class MyPantryItem < ApplicationRecord
  belongs_to :ingredient
  belongs_to :user

  # def ingredient
  #   ingredient = Ingredient.find_by(id: ingredient_id)
  # end
end
