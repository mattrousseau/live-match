class Booking < ApplicationRecord
  belongs_to :venue
  belongs_to :dj

  validates :booking_date, presence: true
  validates :duration, presence: true
  validates :comment, presence: true
end
