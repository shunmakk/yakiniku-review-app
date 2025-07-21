class CreateMenuItems < ActiveRecord::Migration[8.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.integer :category
      t.integer :price
      t.boolean :active

      t.timestamps
    end
  end
end
