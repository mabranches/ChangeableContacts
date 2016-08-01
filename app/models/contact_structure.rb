class ContactStructure < ApplicationRecord
  belongs_to :user
  belongs_to :data_type
end
