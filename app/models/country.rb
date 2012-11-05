class Country < ActiveRecord::Base
  
  has_many :trips
  belongs_to :continent
  has_many :locations
  
  attr_accessible :name, :continent_id 

  

  def to_s
   name
  end

  
  
end
