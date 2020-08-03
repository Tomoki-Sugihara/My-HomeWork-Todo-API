class CreateTodoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.boolean :isDone
      t.boolean :isImportant
      t.integer :subjectIndex

      t.timestamps
    end
  end
end
