class CreateSaunas < ActiveRecord::Migration[5.2]
  def change
    create_table :saunas do |t|
      t.string :address
      t.string :description
      t.integer :capacity
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
