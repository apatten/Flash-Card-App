require "spec_helper"

describe PagesController do
  describe "routing" do

    it "routes to #index" do
      get("/").should route_to("pages#index")
    end

    it "routes to #new" do
      get("/share").should route_to("pages#share")
    end

  end
end
