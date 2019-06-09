class CreateMovieTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_typles do |t|
      t.references :movie, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false

      t.timestamps
    end
  end
end
