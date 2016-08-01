require 'rails_helper'

RSpec.describe "contact_structures/edit", type: :view do
  before(:each) do
    @contact_structure = assign(:contact_structure, ContactStructure.create!(
      :user => nil,
      :data_type => nil,
      :name => "MyString",
      :extra => ""
    ))
  end

  it "renders the edit contact_structure form" do
    render

    assert_select "form[action=?][method=?]", contact_structure_path(@contact_structure), "post" do

      assert_select "input#contact_structure_user_id[name=?]", "contact_structure[user_id]"

      assert_select "input#contact_structure_data_type_id[name=?]", "contact_structure[data_type_id]"

      assert_select "input#contact_structure_name[name=?]", "contact_structure[name]"

      assert_select "input#contact_structure_extra[name=?]", "contact_structure[extra]"
    end
  end
end
