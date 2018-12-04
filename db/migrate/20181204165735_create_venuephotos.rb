class CreateVenuephotos < ActiveRecord::Migration[5.2]
  def change
    create_table :venuephotos do |t|
      t.string :photo
      t.string :tag

      t.timestamps
    end
  end
end
