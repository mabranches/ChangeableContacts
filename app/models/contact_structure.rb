class ContactStructure < ApplicationRecord
  belongs_to :user
  belongs_to :data_type

  validates :user, presence: true
  validates :data_type, presence: true
  validates :name, presence: true
end
