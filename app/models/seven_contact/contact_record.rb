module SevenContact
  class ContactRecord < ActiveRecord::Base
    include SevenContact::Concerns::ContactRecord
  end
end
