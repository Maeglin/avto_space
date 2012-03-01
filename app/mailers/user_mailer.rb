class UserMailer < ActionMailer::Base
  def post(message)
    @message = message
    mail(:to => "ZorroCT@gmail.com", :subject => "Авто Спейс: Сообщение от пользователя", :from => @message.email)
  end
end
