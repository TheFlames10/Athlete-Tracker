class User < ApplicationRecord
  has_secure_password
  has_many :teams, foreign_key: :coach_id
  has_one :athlete
end
