class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo_url
      t.string :relationship

      t.timestamps null: false
    end
  end
end
