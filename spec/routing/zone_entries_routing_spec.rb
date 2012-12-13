require "spec_helper"

describe ZoneEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/zone_entries").should route_to("zone_entries#index")
    end

    it "routes to #new" do
      get("/zone_entries/new").should route_to("zone_entries#new")
    end

    it "routes to #show" do
      get("/zone_entries/1").should route_to("zone_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/zone_entries/1/edit").should route_to("zone_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/zone_entries").should route_to("zone_entries#create")
    end

    it "routes to #update" do
      put("/zone_entries/1").should route_to("zone_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/zone_entries/1").should route_to("zone_entries#destroy", :id => "1")
    end

  end
end
