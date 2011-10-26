require 'spec_helper'

describe "pages/index.html.haml" do
  before(:each) do
    assign(:lists, [
      Factory(:list),
      Factory(:list)
    ])
  end

  it "renders a list of lists" do
    render
  end
end
