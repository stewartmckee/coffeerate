require 'spec_helper'

describe "coffee_beans/show" do
  before(:each) do
    @coffee_bean = assign(:coffee_bean, stub_model(CoffeeBean,
      :name => "Name",
      :supplier_id => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
