class Venuephoto < ApplicationRecord
  has_many :venues, through: :venues_photos
  has_many :venues_photos, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
