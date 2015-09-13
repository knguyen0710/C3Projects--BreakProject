class AddUserIdToLoveNote < ActiveRecord::Migration
  def change
    add_column :love_notes, :user_id, :integer
  end
end
