class AddPhotosToDjs < ActiveRecord::Migration[5.2]
  def change
    add_column :djs, :photos, :json
  end
end
