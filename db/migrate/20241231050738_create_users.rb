class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string  :nickname,                 null: false
      t.string  :email,                    null: false, limit: 191
      t.string  :encrypted_password,       null: false
      t.integer :height,                   null: false
      t.integer :weight,                   null: false
      t.integer :experience_level,         null: false
      t.integer :style,                    null: false
      t.integer :budget,                   null: false

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
