class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :name
      t.string :rating
      t.timestamps
    end
  end
end
