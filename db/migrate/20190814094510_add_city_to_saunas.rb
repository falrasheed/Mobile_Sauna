class AddCityToSaunas < ActiveRecord::Migration[5.2]
  def change
    add_column :saunas, :city, :string
  end
end
