class AddPhotosToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :photos, :json
  end
end
