class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :address
      t.text :description
      t.string :type
      t.integer :size
      t.string :ambiance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
