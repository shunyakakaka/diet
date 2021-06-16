class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.float :height, null: false
      t.float :ini_weight, null: false
      t.float :day_weight, null: false

      t.timestamps
    end
  end
end
