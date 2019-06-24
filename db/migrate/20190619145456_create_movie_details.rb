class CreateMovieDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_details do |t|
      t.string :name
      t.integer :status_type

      t.timestamps
    end
  end
end
