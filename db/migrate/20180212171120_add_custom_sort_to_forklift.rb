class AddCustomSortToForklift < ActiveRecord::Migration[5.1]
  def change
    add_column :forklifts, :index_line_up, :integer, default: 0
  end
end
