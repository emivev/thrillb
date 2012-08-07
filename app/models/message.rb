class Message < ActiveRecord::Base
  belongs_to :trip  
  attr_accessible :name, :email, :subject, :body
  
 

  validates :email,   :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i },
                      :presence => true
  validates :name, :presence => true
  
  
  
end
