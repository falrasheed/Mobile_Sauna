class AddPhotoToSaunas < ActiveRecord::Migration[5.2]
  def change
    add_column :saunas, :photo, :string
  end
end
