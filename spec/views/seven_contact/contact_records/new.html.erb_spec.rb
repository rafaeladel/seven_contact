require 'rails_helper'

module SevenContact
  RSpec.describe "contact_records/new", type: :view do
    before(:each) do
      assign(:contact_record, ContactRecord.new())
    end

    it "renders new contact_record form" do
      render

      assert_select "form[action=?][method=?]", contact_records_path, "post" do
      end
    end
  end
end