module SevenContact
  class ContactMailer < ApplicationMailer
    # default to:

    def send_mail(contact_record)
      @contact_record = contact_record
      mail(to: ENGINE_CONFIG["mailer_to"], subject: "contact us email arrived")
    end
  end
end
