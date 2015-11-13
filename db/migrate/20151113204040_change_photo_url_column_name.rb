class ChangePhotoUrlColumnName < ActiveRecord::Migration
  def change
    rename_column :pins, :photo_url, :image
  end
end
