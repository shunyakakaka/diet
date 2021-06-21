class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.string :name, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
    add_index :logins, :name, unique: true
  end
end
