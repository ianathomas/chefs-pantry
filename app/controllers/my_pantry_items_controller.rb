class MyPantryItemsController < ApplicationController
  before_action :authenticate_user

  def index
    @my_pantry_items = MyPantryItem.where(user_id: current_user.id)
    # @my_pantry_items = MyPantryItem.all
    render :index
  end

  def create
    #IngredientID from the API
    #Ingredient Table has an ID from the API
    #Upon Click "ADD Ingredient"
    #Ingredient.find by BUT with the API key from the table
    #If the Ingredient thats returned does NOT exist, then ingredient.create using Name from the API on the front end
    pp params
     response = HTTP.get("https://api.spoonacular.com/food/ingredients/search?apiKey=#{ENV["FOOD_API_KEY"]}&query=#{params[:name]}")
    pp response.parse(:json)

    potential_ingredient = response.parse(:json)
    selected_ingredient = potential_ingredient["results"].select{ |ingredient| ingredient["id"] == params[:api_id].to_i}
    pp params[:api_id]
    ingredient = Ingredient.find_by(api_id: params[:api_id])
    pp ingredient

    if !ingredient
    pp "created ingredient"
      ingredient = Ingredient.create!(
      name: params[:name],
      api_id: params[:api_id],
      image_url: params[:image_url],
    )
    end

    @my_pantry_item = MyPantryItem.find_by(user_id: current_user.id, ingredient_id: ingredient.id)
    p @my_pantry_item

    
    if !@my_pantry_item
      pp "creating pantry item"
      @my_pantry_item = MyPantryItem.create!({
      user_id: current_user.id,
      ingredient_id: ingredient.id,
      amount: params["amount"].to_i,
    })

    else
      pp "incrementing pantry item"
      p @my_pantry_item
      @my_pantry_item.amount += params["amount"].to_i
      @my_pantry_item.save
    end


    if @my_pantry_item.valid?
      render :show
    else
      render json: {errors: @my_pantry_item.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
