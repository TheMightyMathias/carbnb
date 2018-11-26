class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.text :title
      t.string :model
      t.string :brand
      t.integer :year
      t.string :color
      t.string :location
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
