class AddOldpriceToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :oldprice, :text
  end
end
