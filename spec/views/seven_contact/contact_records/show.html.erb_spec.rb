require 'rails_helper'

module SevenContact
  RSpec.describe "contact_records/show", type: :view do
    before(:each) do
      @contact_record = assign(:contact_record, ContactRecord.create!())
    end

    it "renders attributes in <p>" do
      render
    end
  end
end