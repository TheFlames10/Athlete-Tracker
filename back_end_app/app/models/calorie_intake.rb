class CalorieIntake < ApplicationRecord
  belongs_to :athlete

  validates :meal, presence: true
  validates :calories, numericality: { greater_than_or_equal_to: 0 }
  validates :food_items, presence: true
end
