class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.integer :studio_id
      t.integer :price_per_hr
      t.boolean :audio_eng_in_rate
      t.integer :discount

      t.timestamps
    end
  end
end
