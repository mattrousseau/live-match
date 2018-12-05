class Dj < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  mount_uploaders :photos, PhotoUploader

  validates :artist_name, presence: true
  validates :user, presence: true
end
