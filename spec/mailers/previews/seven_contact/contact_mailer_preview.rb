module SevenContact
  # Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
  class ContactMailerPreview < ActionMailer::Preview
    def send_sample_email
      ContactMailer.send_mail(ContactRecord.first)
    end
  end
end
