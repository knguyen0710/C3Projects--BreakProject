class AddImageToMedias < ActiveRecord::Migration
  def change
    add_column :media, :image, :string
  end
end
