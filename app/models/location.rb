class Location < ActiveRecord::Base
has_many :trips
belongs_to :continent


has_many :images
has_and_belongs_to_many :categories 
attr_accessible :name, :country, :continent_id,  :images_attributes, :category_ids

accepts_nested_attributes_for :images, :allow_destroy => true

def to_s
 name
end

   extend FriendlyId
   friendly_id :name, use: [:slugged, :history] 


end
