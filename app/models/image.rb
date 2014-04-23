class Image < ActiveRecord::Base
 belongs_to :trips
 belongs_to :locations
 has_attached_file :image, :styles => { :large => "640x480", :medium => "300x300>", :thumb => "100x100" },
    :storage => :s3,
    :bucket => 'Thrill',
    :s3_credentials => {
      :access_key_id => 'xxxxxxxxxxxxxxxxx',
      :secret_access_key => 'xxxxxxxxxxxxxxxxxxxxxxxxxxx'
    }
  
  
end
