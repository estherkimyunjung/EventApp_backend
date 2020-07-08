class Event < ApplicationRecord
  has_many :tickets
  has_many :users, through: :tickets
  belongs_to :organization
  has_many :announcements
end
