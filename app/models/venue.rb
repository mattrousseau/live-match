class Venue < ApplicationRecord
  belongs_to :user
  has_many :venues_photos, dependent: :destroy
  has_many :venuephotos, through: :venues_photos, dependent: :destroy

  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 50 }
end
