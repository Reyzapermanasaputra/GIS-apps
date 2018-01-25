class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, on: :create,
  length: { minimum: 5 },
  confirmation: true

  has_many :events
end
