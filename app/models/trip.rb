class Trip < ActiveRecord::Base
  
extend FriendlyId
friendly_id :title, use: [:slugged, :history] 
  
    
belongs_to :user
belongs_to :location
belongs_to :continent
belongs_to :budget
belongs_to :country

has_and_belongs_to_many :categories 
has_and_belongs_to_many :details 
has_and_belongs_to_many :types 

has_many :accomodations, :dependent => :destroy
has_many :lessons, :dependent => :destroy
has_many :reviews, :dependent => :destroy
has_many :messages
has_many :packages, :dependent => :destroy


 attr_accessible :title, :description, :images_attributes, :price, :url, :country_id, :location_id, :category_ids, :continent_id, :type_ids, :detail_ids, :accomodations_attributes, :lessons_attributes, :reviews_attributes, :address, :latitude, :longitude, :vimeo, :youtube, :facebook, :twitter, :directions, :conditions, :spot, :messages_attributes, :trip_id, :budget_id, :capacity, :rooms, :minstay, :offer, :arrange, :season, :important, :rank, :packages_attributes, :headline, :oldprice 
 has_many :images
    
 accepts_nested_attributes_for :images, :allow_destroy => true

 accepts_nested_attributes_for :accomodations, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
 
 accepts_nested_attributes_for :lessons, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
 
 accepts_nested_attributes_for :packages, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
 
 accepts_nested_attributes_for :reviews, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
 
 accepts_nested_attributes_for :messages, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true

scope :with_category, lambda { |categories|
    categories.present? ? where(:category_ids => categories) : scoped }
scope :with_location, lambda { |locations|
    locations.present? ? where(:location_id => locations) : scoped }


def to_s
 title
end



def category_names
  categories.map(&:name)
end



def thumb_nail_url
    image = images.first
    image ? image.image.url(:thumb) : nil
end


def medium_url
    image = images.first
    image ? image.image.url(:large) : nil
end

acts_as_gmappable 
      
      def gmaps4rails_address
          self.address
      end
       

end
