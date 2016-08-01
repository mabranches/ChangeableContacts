require "rails_helper"

RSpec.describe ContactStructuresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contact_structures").to route_to("contact_structures#index")
    end

    it "routes to #new" do
      expect(:get => "/contact_structures/new").to route_to("contact_structures#new")
    end

    it "routes to #show" do
      expect(:get => "/contact_structures/1").to route_to("contact_structures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contact_structures/1/edit").to route_to("contact_structures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contact_structures").to route_to("contact_structures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contact_structures/1").to route_to("contact_structures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contact_structures/1").to route_to("contact_structures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contact_structures/1").to route_to("contact_structures#destroy", :id => "1")
    end

  end
end
