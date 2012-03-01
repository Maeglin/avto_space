class ContactsController < ApplicationController
  def index
    @message = Contact.new
  end
  
  def create
    @messsage = Contact.new(params[:message])
    if @messsage.save
      redirect_to(contacts_path, :notice => "Support was successfully sent.")
    else
      flash[:alert] = "You must fill all fields."
      render 'index'
    end
  end
end
