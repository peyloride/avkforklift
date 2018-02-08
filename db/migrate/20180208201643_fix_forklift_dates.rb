class FixForkliftDates < ActiveRecord::Migration[5.1]
  def change
    change_column :forklifts, :purchase_date, :date
    change_column :forklifts, :sale_date, :date
  end
end
