class Dj < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, PhotoUploader

  validates :artist_name, presence: true
  validates :avatar, presence: true
end
