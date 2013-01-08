class AddCapacityAndRoomsAndMinstayAndOfferAndArrangeAndSeasonAndImportantToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :capacity, :string
    add_column :trips, :rooms, :string
    add_column :trips, :minstay, :text
    add_column :trips, :offer, :text
    add_column :trips, :arrange, :text
    add_column :trips, :season, :text
    add_column :trips, :important, :text
  end
end
