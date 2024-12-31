class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :name,           null: false
      t.text :info,             null: false
      t.integer :board_type,    null: false
      t.string :brand,          null: false
      t.integer :price,         null: false
      t.integer :size,          null: false
      t.integer :weight,        null: false
      t.integer :flex,          null: false
      t.integer :style,         null: false
      t.integer :level,         null: false

      t.timestamps
    end
  end
end
