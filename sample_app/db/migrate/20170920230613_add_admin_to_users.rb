class AddAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    # Note that setting default to false isn't strictly necessary, since it would be nil by default
    # (which is still technically false)
    add_column :users, :admin, :boolean, default: false
  end
end
