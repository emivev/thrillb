class AddCountryToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :country_id, :integer
  end
end
