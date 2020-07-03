class User < ApplicationRecord
  has_many :tickets
  has_many :events, through: :tickets
  enum role: [:attendee, :organizer]

  has_secure_password

  validates :username, uniqueness: true
end
