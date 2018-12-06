class AddDescriptionToDjs < ActiveRecord::Migration[5.2]
  def change
    add_column :djs, :description, :text
  end
end
