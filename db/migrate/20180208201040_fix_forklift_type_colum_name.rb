class FixForkliftTypeColumName < ActiveRecord::Migration[5.1]
  def change
    rename_column :forklifts, :type, :forklift_type
  end
end
