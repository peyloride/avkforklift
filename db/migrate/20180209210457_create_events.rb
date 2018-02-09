class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :date
      t.integer :price
      t.text :event
      t.references :forklift, foreign_key: true

      t.timestamps
    end
  end
end
