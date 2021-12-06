class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.integer :studio_id
      t.text :amenities
      t.text :main_equipment

      t.timestamps
    end
  end
end
