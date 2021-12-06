class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :profile_picture
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.text :website_url
      t.text :facebook_url
      t.text :streaming_platform_url
      t.string :twitter_handle
      t.string :instagram_handle

      t.timestamps
    end
  end
end
