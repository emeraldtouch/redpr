require 'rails_helper'

RSpec.describe "properties/edit", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :name => "MyString",
      :address => "MyString",
      :price => 1,
      :rooms => 1,
      :bathrooms => 1,
      :photo => "MyString",
      :account => nil
    ))
  end

  it "renders the edit property form" do
    render

    assert_select "form[action=?][method=?]", property_path(@property), "post" do

      assert_select "input[name=?]", "property[name]"

      assert_select "input[name=?]", "property[address]"

      assert_select "input[name=?]", "property[price]"

      assert_select "input[name=?]", "property[rooms]"

      assert_select "input[name=?]", "property[bathrooms]"

      assert_select "input[name=?]", "property[photo]"

      assert_select "input[name=?]", "property[account_id]"
    end
  end
end
