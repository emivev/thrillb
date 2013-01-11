class Message < ActiveRecord::Base
  
  belongs_to :trip  
  attr_accessible :name, :email, :subject, :body, :startdate, :enddate, :adult, :children
  
   
 
  validates_presence_of :name
  
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_length_of :body, :maximum => 500
  
  
end
