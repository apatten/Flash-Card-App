require 'spec_helper'

describe "lists/new.html.haml" do
  before(:each) do
    assign(:list, stub_model(List,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lists_path, :method => "post" do
      assert_select "input#list_title", :name => "list[title]"
    end
  end
end
