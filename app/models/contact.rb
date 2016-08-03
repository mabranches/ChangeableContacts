class Contact < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
