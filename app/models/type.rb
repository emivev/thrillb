class Type < ActiveRecord::Base
has_and_belongs_to_many :trips

def to_s
 name
end
end
