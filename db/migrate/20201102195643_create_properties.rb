class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :reception_rooms
      t.text :description
      t.integer :price
      t.string :property_sub_type
      t.string :address

      t.timestamps
    end
  end
end
