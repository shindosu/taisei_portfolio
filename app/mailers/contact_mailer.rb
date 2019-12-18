class ContactMailer < ApplicationMailer
  def contact_email(contact)
    @contact = contact
      # default from: "#{@contact.email}"
      mail(from: "#{@contact.email}", to: "taiseiyamada2014@gmail.com", subject: "#{@contact.subject}")
  end
end
