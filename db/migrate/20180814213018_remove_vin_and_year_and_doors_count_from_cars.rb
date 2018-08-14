class RemoveVinAndYearAndDoorsCountFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :vin, :string
    remove_column :cars, :year, :integer
    remove_column :cars, :doors_count, :integer
  end
end
