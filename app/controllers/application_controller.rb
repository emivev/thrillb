class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
 before_filter :meta_defaults
 private

 def meta_defaults
    @meta_title = "Thrill Engine - Access Epic Adventures"
    @meta_keywords = "surf camp, surf holidays, surf packages, ski chalet, adventure holidays "
    @meta_description = "Thrill Engine is all about trips that will make you feel alive. Fair Prices, No Booking Fees."
  end
  
  
end
