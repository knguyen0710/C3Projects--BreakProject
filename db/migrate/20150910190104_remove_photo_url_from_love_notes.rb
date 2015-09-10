class RemovePhotoUrlFromLoveNotes < ActiveRecord::Migration
  def change
    remove_column :love_notes, :photo_url, :string
  end
end
