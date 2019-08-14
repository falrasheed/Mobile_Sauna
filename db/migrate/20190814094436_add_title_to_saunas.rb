class AddTitleToSaunas < ActiveRecord::Migration[5.2]
  def change
    add_column :saunas, :title, :string
  end
end
