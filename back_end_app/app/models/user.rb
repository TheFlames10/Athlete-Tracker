class User < ApplicationRecord
  has_secure_password
  has_many :teams, foreign_key: :coach_id
  has_one :athlete

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
end
