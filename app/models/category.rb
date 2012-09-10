class Category < ActiveRecord::Base
 has_and_belongs_to_many :trips
 has_and_belongs_to_many :locations

def to_s
 name
end

   extend FriendlyId
   friendly_id :name, use: [:slugged, :history] 


end
