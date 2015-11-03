class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.integer :unit_order, default: 2000

      t.timestamps null: false
    end
  end
end
