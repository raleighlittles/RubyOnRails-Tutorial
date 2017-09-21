class AddActivationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :activation_digest, :string
    # Default false is not strictly needed and is only for clarity
    add_column :users, :activated, :boolean, default: false
    add_column :users, :activated_at, :datetime
  end
end
