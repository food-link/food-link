class Profile < ApplicationRecord
  belongs_to :user

  # validates :city, length: { in: 4..40 }, allow_nil: false
  # validates :phone_number, length: { in: 6..40 }, allow_nil: false
  # validates :zip, length: { in: 3..40 }, allow_nil: false
  # validates :name, presence: true
  # validates :state, presence: true
end
