class UserMailer < ActionMailer::Base
  def post(message)
    @message = message
    mail(:to => "avtospace@yandex.ru", :subject => "Авто Спейс: Сообщение от пользователя", :from => @message.email)
  end
end
