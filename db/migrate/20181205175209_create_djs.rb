class CreateDjs < ActiveRecord::Migration[5.2]
  def change
    create_table :djs do |t|
      t.string :artist_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
