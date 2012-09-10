class CreateCategoriesLocationsJoinTable < ActiveRecord::Migration
  def self.up
   create_table :categories_locations, :id => false do |t|
    t.integer :category_id
    t.integer :location_id
  end
 end 

  def self.down
    drop_table :categories_locations 
  end
end
