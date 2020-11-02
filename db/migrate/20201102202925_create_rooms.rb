class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.text :description

      t.timestamps
    end
  end
end