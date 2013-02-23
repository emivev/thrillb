class AddHeadlineToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :headline, :text
  end
end
