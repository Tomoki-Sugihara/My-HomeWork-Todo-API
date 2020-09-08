class AddIsTask < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_lists, :isTask, :boolean
  end
end
