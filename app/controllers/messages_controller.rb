class MessagesController < ApplicationController
  
  
  
  def create
    @trip = Trip.find(params[:trip_id])
    @message = @trip.messages.create(params[:message])     
      if @trip.messages.create
        MessageMailer.send_message(@message).deliver
        redirect_to thank_you_path        
      else    
        redirect_to trip_path(@trip)
    end
  end
end




 