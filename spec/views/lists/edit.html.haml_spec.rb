require 'spec_helper'

describe "lists/edit.html.haml" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :title => "MyString"
    ))
  end

  it "renders the edit list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lists_path(@list), :method => "post" do
      assert_select "input#list_title", :name => "list[title]"
    end
  end
end
