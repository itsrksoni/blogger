class AddConfirmableToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_emai, :string
    
    add_index :users, :unlock_token, unique: true
  end
end