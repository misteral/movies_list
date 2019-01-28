class CreateGentres < ActiveRecord::Migration[5.2]
  def change
    create_table :gentres do |t|
      t.string :name

      t.timestamps
    end
  end
end
