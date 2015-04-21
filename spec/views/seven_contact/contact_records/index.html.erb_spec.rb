require 'rails_helper'

module SevenContact
  RSpec.describe "contact_records/index", type: :view do
    before(:each) do
      assign(:contact_records, [
                                 ContactRecord.create!(email: "dwd@dw.com", content: "dwww"),
                                 ContactRecord.create!(email: "dw3d@dqqw.com", content: "sdwww")
                             ])
    end

    it "renders a list of contact_records" do
      render template: "seven_contact/contact_records/index"
    end
  end
end