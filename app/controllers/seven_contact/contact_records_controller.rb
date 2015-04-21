require_dependency "seven_contact/application_controller"

module SevenContact
  class ContactRecordsController < ApplicationController
    include SevenContact::Concerns::ContactRecordsController
  end
end
