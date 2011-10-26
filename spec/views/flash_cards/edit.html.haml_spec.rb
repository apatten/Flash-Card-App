require 'spec_helper'

describe "flash_cards/edit.html.haml" do
  before(:each) do
    @flash_card = assign(:flash_card, Factory(:flash_card))
  end

  it "renders the edit flash_card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flash_cards_path(@flash_card), :method => "post" do
    end
  end
end
