class AddNameToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :name, :string
  end
end
