class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :board, null: false, foreign_key: true
      t.integer :rating,                null: false
      t.text :comment,                  null: false
      t.integer :user_exp,              null: false

      t.timestamps
    end
  end
end
