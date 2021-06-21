class ChangeUsersToWeights < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :weights
  end
end
