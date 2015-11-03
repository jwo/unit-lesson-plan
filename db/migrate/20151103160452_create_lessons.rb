class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.integer :lesson_ids, array: true, default: []
      t.references :unit, index: true, foreign_key: true
      t.integer :lesson_order, default: 2000

      t.timestamps null: false
    end
  end
end
