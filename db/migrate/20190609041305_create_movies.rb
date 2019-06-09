class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :original_title
      t.text :synopsis
      t.integer :total_ep, limit: 2
      t.integer :status, default: 0
      t.datetime :air_date

      t.timestamps
    end
    add_index :movies, :title
    add_index :movies, :original_title
  end
end
