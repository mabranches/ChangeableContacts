require 'rails_helper'

RSpec.describe "contact_structures/index", type: :view do
  before(:each) do
    assign(:contact_structures, [
      ContactStructure.create!(
        :user => nil,
        :data_type => nil,
        :name => "Name",
        :extra => ""
      ),
      ContactStructure.create!(
        :user => nil,
        :data_type => nil,
        :name => "Name",
        :extra => ""
      )
    ])
  end

  it "renders a list of contact_structures" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
