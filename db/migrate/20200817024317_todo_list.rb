class TodoList < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_Lists, :key, :string
  end
end
