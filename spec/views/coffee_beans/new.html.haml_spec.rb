require 'spec_helper'

describe "coffee_beans/new" do
  before(:each) do
    assign(:coffee_bean, stub_model(CoffeeBean,
      :name => "MyString",
      :supplier_id => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new coffee_bean form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coffee_beans_path, "post" do
      assert_select "input#coffee_bean_name[name=?]", "coffee_bean[name]"
      assert_select "input#coffee_bean_supplier_id[name=?]", "coffee_bean[supplier_id]"
      assert_select "textarea#coffee_bean_description[name=?]", "coffee_bean[description]"
    end
  end
end
