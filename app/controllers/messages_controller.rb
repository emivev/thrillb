class MessagesController < ApplicationController
  
  
  def index
     @trip = Trip.find(params[:trip_id])
     @message = @trip.messages.create(params[:message])   
      
  end
  
  def create
    @trip = Trip.find(params[:trip_id])
    @message = @trip.messages.create(params[:message])     
      if @message.valid?
        MessageMailer.send_message(@message).deliver
        redirect_to thank_you_path        
      else            
         render "edit"
        
    end
  end
end




 