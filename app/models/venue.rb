class Venue < ApplicationRecord
  belongs_to :user

  mount_uploaders :photos, PhotoUploader

  has_many :venues_equipments, dependent: :destroy
  has_many :venueequipments, through: :venues_equipments, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 50 }
end
