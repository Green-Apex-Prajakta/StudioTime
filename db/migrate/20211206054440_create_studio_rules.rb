class CreateStudioRules < ActiveRecord::Migration[6.1]
  def change
    create_table :studio_rules do |t|
      t.integer :studio_id
      t.text :studio_rule
      t.text :cancellation_policy

      t.timestamps
    end
  end
end
