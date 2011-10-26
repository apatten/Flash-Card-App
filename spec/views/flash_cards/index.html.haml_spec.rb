require 'spec_helper'

describe "flash_cards/index.html.haml" do
  before(:each) do
    assign(:flash_cards, [
      Factory(:flash_card),
      Factory(:flash_card)
    ])
  end

  it "renders a list of flash_cards" do
    render
  end
end
