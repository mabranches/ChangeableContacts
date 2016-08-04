class ContactStructure < ApplicationRecord
  belongs_to :user
  belongs_to :data_type

  validates :user, presence: true
  validates :data_type, presence: true
  validates :name, presence: true
  validate :combo_validation

  def combo_validation
    return unless data_type && data_type.name == 'combo_box'
    if extra.nil? || !extra.kind_of?(Array)
      errors.add(:data_type,"combo_box should have an array of values")
    end
  end
end
