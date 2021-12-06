class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.integer :user_id
      t.string :name
      t.string :details
      t.string :type
      t.integer :min_booking
      t.integer :max_studio_occupancy
      t.time :studio_hrs
      t.string :advance_time
      t.text :past_clients
      t.string :audio_samples

      t.timestamps
    end
  end
end
