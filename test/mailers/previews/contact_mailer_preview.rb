# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email
    contact = Contact.last
    # This is how you pass value to params[:user] inside mailer definition!
    ContactMailer.contact_email(contact)
  end
end
