class RemoveApiKeyFromIngredients < ActiveRecord::Migration[7.0]
  def change
    remove_column :ingredients, :api_key, :string
  end
end
