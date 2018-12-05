class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :venue, foreign_key: true
      t.references :dj, foreign_key: true
      t.date :booking_date
      t.float :duration
      t.text :comment
      t.column :status, :integer, default: 0

      t.timestamps
    end
  end
end
