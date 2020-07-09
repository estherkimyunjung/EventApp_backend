class User < ApplicationRecord
  has_secure_password

  has_many :tickets
  has_many :events, through: :tickets
  enum role: [:Attendee, :Organizer]
  accepts_nested_attributes_for :events
  has_many :messages
  has_many :rooms, through: :messages

  validates :username, uniqueness: true
end
