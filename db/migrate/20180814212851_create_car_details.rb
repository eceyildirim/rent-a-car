class CreateCarDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :car_details do |t|
      t.integer :year
      t.integer :doors_count
      t.string :vin
      t.belongs_to :car, foreign_key: true

      t.timestamps
    end
  end
end
