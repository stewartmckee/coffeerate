require 'spec_helper'

describe "coffee_beans/edit" do
  before(:each) do
    @coffee_bean = assign(:coffee_bean, stub_model(CoffeeBean,
      :name => "MyString",
      :supplier_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit coffee_bean form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coffee_bean_path(@coffee_bean), "post" do
      assert_select "input#coffee_bean_name[name=?]", "coffee_bean[name]"
      assert_select "input#coffee_bean_supplier_id[name=?]", "coffee_bean[supplier_id]"
      assert_select "textarea#coffee_bean_description[name=?]", "coffee_bean[description]"
    end
  end
end
