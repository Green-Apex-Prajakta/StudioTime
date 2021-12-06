class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.integer :studio_id
      t.text :address
      t.string :building

      t.timestamps
    end
  end
end
