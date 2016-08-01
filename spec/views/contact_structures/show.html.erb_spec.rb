require 'rails_helper'

RSpec.describe "contact_structures/show", type: :view do
  before(:each) do
    @contact_structure = assign(:contact_structure, ContactStructure.create!(
      :user => nil,
      :data_type => nil,
      :name => "Name",
      :extra => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
