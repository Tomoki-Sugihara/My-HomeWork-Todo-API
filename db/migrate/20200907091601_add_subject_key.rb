class AddSubjectKey < ActiveRecord::Migration[5.2]
  def change
    add_column :todo_lists, :subjectKey, :string
  end
end
