class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :thumbnail
      t.string :director
      t.string :main_star
      t.string :description

      t.timestamps
    end
  end
end
