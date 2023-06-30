class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :year
      t.string :ranking
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
