require 'spec_helper'

describe "flash_cards/show.html.haml" do
  before(:each) do
    @flash_card = assign(:flash_card, stub_model(FlashCard))
  end

  it "renders attributes in <p>" do
    render
  end
end
