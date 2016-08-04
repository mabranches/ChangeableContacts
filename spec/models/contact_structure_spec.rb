require 'rails_helper'

RSpec.describe ContactStructure, type: :model do

  context 'combo_box data type' do
    before do
      @contact_structure = ContactStructure.new(
        user_id: user.id,
        data_type_id: DataType.find_by(name: 'combo_box').id,
        name: 'field_name'

      )
    end

    it 'should give a error with no extra' do
      expect(@contact_structure.save).to be_falsy

    end

    it 'should give an error when extra is not an array' do
      @contact_structure.extra = 'some_string'
      expect(@contact_structure.save).to be_falsy

    end

    it 'should store an array in extra field' do
      @contact_structure.extra = [1,2,3,4]
      expect(@contact_structure.save).to be_truthy

    end
  end
end
