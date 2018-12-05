class CreateVenueequipments < ActiveRecord::Migration[5.2]
  def change
    create_table :venueequipments do |t|
      t.string :name
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
