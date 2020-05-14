class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :zip
      t.string :menu_link

      t.timestamps
    end
  end
end
