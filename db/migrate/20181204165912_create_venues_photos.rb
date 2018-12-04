class CreateVenuesPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :venues_photos do |t|
      t.references :venue, foreign_key: true
      t.references :venuephoto, foreign_key: true

      t.timestamps
    end
  end
end
