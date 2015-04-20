require 'rails_helper'

module SevenContact
  RSpec.describe "contact_records/index", type: :view do
    before(:each) do
      assign(:contact_records, [
                                 ContactRecord.create!(),
                                 ContactRecord.create!()
                             ])
    end

    it "renders a list of contact_records" do
      render
    end
  end
end