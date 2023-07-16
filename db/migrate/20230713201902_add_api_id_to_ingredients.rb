class AddApiIdToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :api_id, :string
  end
end
