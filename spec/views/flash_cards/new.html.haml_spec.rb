require 'spec_helper'

describe "flash_cards/new.html.haml" do
  before(:each) do
    assign(:flash_card, stub_model(FlashCard).as_new_record)
  end

  it "renders new flash_card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => flash_cards_path, :method => "post" do
    end
  end
end
