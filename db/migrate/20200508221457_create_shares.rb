class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.string :user_id
      t.string :location_id
      t.string :drink_id
      t.string :size
      t.integer :price
      t.integer :abv_per_dollar
      t.string :special_or_always
      t.string :when_available
      
      t.timestamps
    end
  end
end
