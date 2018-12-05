class VenuesPhoto < ApplicationRecord
  belongs_to :venue
  belongs_to :venuephoto, dependent: :destroy
end
