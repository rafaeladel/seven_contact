module SevenContact
  class ContactMailer < ApplicationMailer
    default from: "from@example.com"

    def send_mail(contact_record)
      @contact_record = contact_record
      mail(to: @contact_record.email, subject: "contact us email arrived")
    end
  end
end
