class RemoveThumbnailFromMovie < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :thumbnail
  end
end
