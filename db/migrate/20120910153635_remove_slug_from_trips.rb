class RemoveSlugFromTrips < ActiveRecord::Migration
  def up
    remove_column :trips, :slug
  end

  def down
    add_column :trips, :slug, :string
  end
end
