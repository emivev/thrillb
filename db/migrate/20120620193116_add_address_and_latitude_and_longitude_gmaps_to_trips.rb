class AddAddressAndLatitudeAndLongitudeGmapsToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :address, :string
    add_column :trips, :latitude, :float
    add_column :trips, :longitude, :float
    add_column :trips, :gmaps, :boolean
  end
end
