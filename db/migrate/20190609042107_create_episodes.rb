class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.integer :number, limit: 4
      t.integer :status, default: 0
      t.string :url
      t.references :movie, foreign_key: true, null: false

      t.timestamps
    end
    add_index :episodes, :status
  end
end
