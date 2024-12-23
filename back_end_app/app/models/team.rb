class Team < ApplicationRecord
  belongs_to :coach, class_name: 'User'
  has_many :athletes
end
