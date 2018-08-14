class AddRentedToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :rented, :boolean
  end
end
