class CreateMyPantries < ActiveRecord::Migration[7.0]
  def change
    create_table :my_pantries do |t|
      t.integer :ingredient_id
      t.integer :user_id
      t.string :amount

      t.timestamps
    end
  end
end
