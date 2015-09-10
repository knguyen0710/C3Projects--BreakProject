class AddRemoteImageUrlToLoveNotes < ActiveRecord::Migration
  def change
    add_column :love_notes, :remote_image_url, :string
  end
end
