class CreateRecs < ActiveRecord::Migration[7.0]
  def change
    create_table :recs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :board, null: false, foreign_key: true
      t.float :score,                   null: false
      t.text :reason

      t.timestamps
    end
  end
end
