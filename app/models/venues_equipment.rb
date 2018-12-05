class VenuesEquipment < ApplicationRecord
  belongs_to :venue
  belongs_to :venueequipment, dependent: :destroy
end
