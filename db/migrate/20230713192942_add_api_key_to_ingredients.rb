class AddApiKeyToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :api_key, :string
  end
end
