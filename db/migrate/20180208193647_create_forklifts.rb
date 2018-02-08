class CreateForklifts < ActiveRecord::Migration[5.1]
  def change
    create_table :forklifts do |t|
      t.string :plate
      t.integer :brand
      t.integer :lifting_capacity
      t.integer :production_year
      t.integer :lifting_height
      t.integer :type
      t.integer :price
      t.string :model
      t.integer :elevator_type
      t.integer :wheels
      t.string :accumulator
      t.string :system
      t.string :made_in
      t.integer :attachment
      t.integer :status
      t.integer :purchase_price
      t.datetime :purchase_date
      t.integer :expenses
      t.integer :sale_price
      t.datetime :sale_date
      t.integer :profit
      t.integer :waiting_days

      t.timestamps
    end
  end
end
