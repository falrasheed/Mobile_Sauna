class AddSquareMeterToSaunas < ActiveRecord::Migration[5.2]
  def change
    add_column :saunas, :sq_meter, :float
  end
end
