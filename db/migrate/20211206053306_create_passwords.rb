class CreatePasswords < ActiveRecord::Migration[6.1]
  def change
    create_table :passwords do |t|
      t.integer :account_id
      t.integer :new_passwd

      t.timestamps
    end
  end
end
