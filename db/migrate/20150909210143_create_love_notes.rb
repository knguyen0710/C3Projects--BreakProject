class CreateLoveNotes < ActiveRecord::Migration
  def change
    create_table :love_notes do |t|
      t.string :note
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
