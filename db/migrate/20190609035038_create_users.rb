class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.integer :role, default: 2

      t.timestamps
    end
    add_index :users, :username
  end
end
