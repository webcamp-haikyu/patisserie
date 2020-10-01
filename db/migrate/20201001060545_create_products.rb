class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.text :introduction
      t.integer :price
      t.boolean :is_active, null: false, default: true
      t.string :image_id

      t.timestamps
    end
  end
end
