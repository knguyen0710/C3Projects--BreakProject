class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :handle
      t.string :source
      t.string :avatar_url

      t.timestamps null: false
    end
  end
end
