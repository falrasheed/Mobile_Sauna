class AddCoordinatesToSaunas < ActiveRecord::Migration[5.2]
  def change
    add_column :saunas, :latitude, :float
    add_column :saunas, :longitude, :float
  end
end
