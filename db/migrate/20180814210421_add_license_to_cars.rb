class AddLicenseToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :license, :string
  end
end
