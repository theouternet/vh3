class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :zip
      t.string :menu_link

      t.timestamps
    end
  end
end
