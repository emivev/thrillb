class AddLocationIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :location_id, :integer
  end
end
