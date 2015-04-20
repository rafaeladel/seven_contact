require 'rails_helper'

module SevenContact
  RSpec.describe "contact_records/edit", type: :view do
    before(:each) do
      @contact_record = assign(:contact_record, ContactRecord.create!())
    end

    it "renders the edit contact_record form" do
      render

      assert_select "form[action=?][method=?]", contact_record_path(@contact_record), "post" do
      end
    end
  end
end

