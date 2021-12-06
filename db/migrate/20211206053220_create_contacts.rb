class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.integer :account_id
      t.string :email
      t.integer :mobile_no

      t.timestamps
    end
  end
end
