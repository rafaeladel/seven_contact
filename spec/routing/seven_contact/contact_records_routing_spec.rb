require "rails_helper"

module SevenContact
  RSpec.describe ContactRecordsController, type: :routing do
    routes { SevenContact::Engine.routes  }
    describe "routing" do

      it "routes to #index" do
        expect(:get => "/contact_records").to route_to("contact_records#index")
      end

      it "routes to #new" do
        expect(:get => "/contact_records/new").to route_to("contact_records#new")
      end

      it "routes to #show" do
        expect(:get => "/contact_records/1").to route_to("contact_records#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/contact_records/1/edit").to route_to("contact_records#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/contact_records").to route_to("contact_records#create")
      end

      it "routes to #update" do
        expect(:put => "/contact_records/1").to route_to("contact_records#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/contact_records/1").to route_to("contact_records#destroy", :id => "1")
      end

    end
  end
end
