class AddAddressToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :address, :string, null: false
  end
end
