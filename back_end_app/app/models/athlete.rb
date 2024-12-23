class Athlete < ApplicationRecord
  belongs_to :user
  belongs_to :team, optional: true
  has_many :athlete_workouts
  has_many :calorie_intakes
  has_many :progress_reports
end
