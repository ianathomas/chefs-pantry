require "http"

class IngredientsController < ApplicationController
  # def index
  #   @ingredients = Ingredient.all
  #   render :index
  # end

  # def index
  #   response = HTTP.get("https://api.spoonacular.com/food/ingredients/search?apiKey=#{ENV["FOOD_API_KEY"]}&query=banana")
  #   data = JSON.parse(response.body)
  #   p data
  #   render json: data
  # end

  def index
    response = HTTP.get("https://api.spoonacular.com/food/ingredients/search?apiKey=#{ENV["FOOD_API_KEY"]}&query=#{params[:search_terms]}")

    ingredients = response.parse(:json)

    render json: ingredients
  end
#   def create
#     @ingredient = Ingredient.create(
#       name: params[:name],
#       ingredient_type: params[:ingredient_type],
#       image_url: params[:image_url],
#     )
#     render :show
#   end

#   def show
#     @ingredient = Ingredient.find_by(id: params[:id])
#     render :show
#   end

#   def update
#     @ingredient = Ingredient.find_by(id: params[:id])
#     @ingredient.update(
#       name: params[:name] || @ingredient.name,
#       ingredient_type: params[:ingredient_type] || @ingredient.ingredient_type,
#       image_url: params[:image_url] || @ingredient.image_url,
#     )
#     render :show
#   end

#   def destroy
#     @ingredient_id = Ingredient_id.find_by(id: params[:id])
#     @ingredient_id.destroy
#     render json: { message: "Ingredient_id destroyed successfully" }
#   end
end