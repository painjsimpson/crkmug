class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :name
      t.string :url
      t.boolean :menu
      t.boolean :menu_item
      t.integer :menu_position
      t.integer :used_count

      t.timestamps
    end
  end
end
