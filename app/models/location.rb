class Location < ActiveRecord::Base
has_many :trips
belongs_to :continent
belongs_to :country

has_many :images
has_and_belongs_to_many :categories 
attr_accessible :name, :country_id, :continent_id,  :category_ids

accepts_nested_attributes_for :images, :allow_destroy => true

def to_s
 name
end

   extend FriendlyId
   friendly_id :name, use: [:slugged, :history] 


end
