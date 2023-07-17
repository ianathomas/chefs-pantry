class Ingredient < ApplicationRecord
  has_many :my_pantry_items
  def SearchIngredients(name)
    response = HTTP.get("https://api.spoonacular.com/food/ingredients/search?apiKey=#{ENV["FOOD_API_KEY"]}&query=#{name}")
    pp response
  end
end
