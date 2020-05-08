class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.integer :zip
      t.string :city
      t.string :state
      t.string :hours
      t.string :menu_link

      t.timestamps
    end
  end
end
