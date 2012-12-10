class Budget < ActiveRecord::Base
  
  has_many :trips
  
  def to_s
 name
end
  
end
