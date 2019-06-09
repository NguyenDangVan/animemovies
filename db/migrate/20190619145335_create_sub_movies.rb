class CreateSubMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_movies do |t|
      t.references :movie, foreign_key: true
      t.integer :status_movie
      t.integer :type_movie

      t.timestamps
    end
  end
end
