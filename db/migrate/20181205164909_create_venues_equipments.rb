class CreateVenuesEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :venues_equipments do |t|
      t.references :venue, foreign_key: true
      t.references :venueequipment, foreign_key: true

      t.timestamps
    end
  end
end
