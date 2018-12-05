class Venueequipment < ApplicationRecord
  has_many :venues, through: :venues_equipments
  has_many :venues_equipments, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
