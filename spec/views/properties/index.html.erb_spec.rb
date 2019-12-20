require 'rails_helper'

RSpec.describe "properties/index", type: :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :name => "Name",
        :address => "Address",
        :price => 2,
        :rooms => 3,
        :bathrooms => 4,
        :photo => "Photo",
        :account => nil
      ),
      Property.create!(
        :name => "Name",
        :address => "Address",
        :price => 2,
        :rooms => 3,
        :bathrooms => 4,
        :photo => "Photo",
        :account => nil
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
