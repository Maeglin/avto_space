class ContactsController < ApplicationController
  def index
    @message = Contact.new
  end
  
  def create
    @messsage = Contact.new(params[:message])
    @messsage.save
    flash.now[:error] = 'The user could not be created'
  end
end
