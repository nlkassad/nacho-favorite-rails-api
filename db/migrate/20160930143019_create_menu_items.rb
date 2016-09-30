class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.references :restaurant, index: true, foreign_key: true
      t.references :dish, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
