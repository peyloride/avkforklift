class AddDescriptionToForklift < ActiveRecord::Migration[5.1]
  def change
    add_column :forklifts, :description, :text
  end
end
