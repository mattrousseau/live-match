class Venuephoto < ApplicationRecord
  has_many :venues, through: :venues_photos
  has_many :venues_photos, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true
  validates :tag, presence: true
end
