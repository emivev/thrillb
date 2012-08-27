class Location < ActiveRecord::Base
has_many :trips
belongs_to :continent


has_many :images
attr_accessible :mages_attributes

accepts_nested_attributes_for :images, :allow_destroy => true

def to_s
 name
end

end
