class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        ContactMailer.contact_email(@contact).deliver_now
        redirect_to projects_path
      else
        render :new
      end
    end

    private
    def contact_params
      params.require(:contact).permit(:full_name, :email, :subject, :message)
    end
  
end
