require 'spec_helper'

describe PagesController do

  describe "GET index" do
    it "assigns all lists as @lists" do
      list = Factory(:list)
      get :index
      assigns(:lists).should eq([list])
    end
  end

end
