class CreateJoinTableGentreMovie < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gentres, :movies do |t|
      t.index [:movie_id, :gentre_id]
    end
  end
end
