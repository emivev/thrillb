class AddRankToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :rank, :string
  end
end
