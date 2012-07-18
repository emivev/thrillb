class AddDirectionsConditionsSpotToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :directions, :text
    add_column :trips, :conditions, :text
    add_column :trips, :spot, :string
  end
end
