class ChangeLoginsToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :logins, :users
  end
end
