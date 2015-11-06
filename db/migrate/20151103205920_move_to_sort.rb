class MoveToSort < ActiveRecord::Migration
  def change
    rename_column :lessons, :lesson_order, :sort
  end
end
