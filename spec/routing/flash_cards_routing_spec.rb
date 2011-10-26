require "spec_helper"

describe FlashCardsController do
  describe "routing" do

    it "routes to #index" do
      get("/flash_cards").should route_to("flash_cards#index")
    end

    it "routes to #new" do
      get("/flash_cards/new").should route_to("flash_cards#new")
    end

    it "routes to #show" do
      get("/flash_cards/1").should route_to("flash_cards#show", :id => "1")
    end

    it "routes to #edit" do
      get("/flash_cards/1/edit").should route_to("flash_cards#edit", :id => "1")
    end

    it "routes to #create" do
      post("/flash_cards").should route_to("flash_cards#create")
    end

    it "routes to #update" do
      put("/flash_cards/1").should route_to("flash_cards#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/flash_cards/1").should route_to("flash_cards#destroy", :id => "1")
    end

  end
end
