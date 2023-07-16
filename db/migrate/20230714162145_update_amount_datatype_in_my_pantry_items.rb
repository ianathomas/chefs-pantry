class UpdateAmountDatatypeInMyPantryItems < ActiveRecord::Migration[7.0]
  def change
    change_column :my_pantry_items, :amount, 'integer USING CAST(amount AS integer)'
    
  end
end
