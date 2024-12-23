class Athlete < ApplicationRecord
  belongs_to :user
  belongs_to :team, optional: true
  has_many :athlete_workouts
  has_many :calorie_intakes
  has_many :progress_reports

  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 10 }
  validates :height, numericality: { greater_than: 0 }
  validates :weight, numericality: { greater_than: 0 }
  validates :user_id, presence: true
  validates :team_id, presence: true
end
