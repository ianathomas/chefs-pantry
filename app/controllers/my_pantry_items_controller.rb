class MyPantryItemsController < ApplicationController
  # before_action :authenticate_user

  def index
    @my_pantry_items = MyPantryItem.all
    render :index
  end

  def create
    @my_pantry_item = MyPantryItem.create({
      user_id: current_user.id,
      ingredient_id: params["ingredient_id"],
      amount: params["amount"],
    })

    if @my_pantry_item.valid?
      render :show
    else
      render json: {errors: @my_pantry_item.errors.full_messages}, status: :unprocessable_entity
    end
  end
end
