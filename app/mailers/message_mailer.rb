class MessageMailer < ActionMailer::Base
  default to: "emils.veveris@thrillengine.com"

  def send_message(message)
    @message = message
    mail( :subject => @message.subject, :from => @message.email )
    
  end
end
