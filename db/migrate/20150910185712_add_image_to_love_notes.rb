class AddImageToLoveNotes < ActiveRecord::Migration
  def change
    add_column :love_notes, :image, :string
  end
end
