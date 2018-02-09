class AddImageColumsToPictures < ActiveRecord::Migration[5.1]
  def up
    add_attachment :pictures, :image
  end

  def down
    remove_attachment :pictures, :image
  end
end
