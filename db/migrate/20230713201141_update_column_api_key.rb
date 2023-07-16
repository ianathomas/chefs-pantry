class UpdateColumnApiKey < ActiveRecord::Migration[7.0]
  def change
    update_column :ingredients, :api_id, :string
  end
end
