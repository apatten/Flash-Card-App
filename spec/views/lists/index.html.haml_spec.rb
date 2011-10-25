require 'spec_helper'

describe "lists/index.html.haml" do
  before(:each) do
    assign(:lists, [
      stub_model(List,
        :title => "Title"
      ),
      stub_model(List,
        :title => "Title"
      )
    ])
  end

  it "renders a list of lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
