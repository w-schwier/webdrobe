require "rails_helper"

RSpec.describe GarmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/garments").to route_to("garments#index")
    end

    it "routes to #new" do
      expect(:get => "/garments/new").to route_to("garments#new")
    end

    it "routes to #show" do
      expect(:get => "/garments/1").to route_to("garments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/garments/1/edit").to route_to("garments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/garments").to route_to("garments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/garments/1").to route_to("garments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/garments/1").to route_to("garments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/garments/1").to route_to("garments#destroy", :id => "1")
    end

  end
end
