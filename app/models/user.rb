class User < ApplicationRecord
  has_secure_password

  has_many :tickets
  has_many :events, through: :tickets
  enum role: [:Attendee, :Organizer]

  validates :username, uniqueness: true
end
