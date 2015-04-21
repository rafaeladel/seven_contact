require 'rails_helper'

module SevenContact
  RSpec.describe "contact_records/show", type: :view do
    before(:each) do
      @contact_record = assign(:contact_record, ContactRecord.create!(email: "dwd@dw.com", content: "dwww"))
    end

    it "renders attributes in <p>" do
      render template: "seven_contact/contact_records/show"
    end
  end
end