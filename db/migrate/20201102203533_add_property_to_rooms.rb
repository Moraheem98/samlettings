class AddPropertyToRooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :rooms, :property, null: false, foreign_key: true
  end
end
