class FoodDonation < ApplicationRecord
  belongs_to :user, foreign_key: 'restaurant_id'

  validates :available_at, presence: true
  validates :quantity, presence: true
  validates :note, presence: true

  enum status: {
    available: 0,
    requested: 1,
    picked_up: 2
  }
end
