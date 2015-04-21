require 'rails_helper'

module SevenContact
  RSpec.describe "contact_records/new", type: :view do
    before(:each) do
      assign(:contact_record, ContactRecord.new(email: "dwd@dw.com", content: "dwww"))
    end

    it "renders new contact_record form" do
      render template: "seven_contact/contact_records/new"

      assert_select "form[action=?][method=?]", seven_contact.new_contact_record_path, "post" do
      end
    end
  end
end