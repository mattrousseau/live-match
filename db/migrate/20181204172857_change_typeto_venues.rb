class ChangeTypetoVenues < ActiveRecord::Migration[5.2]
  def change
    remove_column :venues, :type, :string
    add_column :venues, :category, :string
  end
end
