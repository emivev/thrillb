class ChangeRoomsColumnToTrips < ActiveRecord::Migration
  def up
    change_column :trips, :rooms, :text
  end

  def down
    change_column :trips, :rooms, :string
  end
end
