require 'spec_helper'

describe "FlashCards" do
  describe "GET /flash_cards" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get flash_cards_path
      response.status.should be(200)
    end
  end
end
