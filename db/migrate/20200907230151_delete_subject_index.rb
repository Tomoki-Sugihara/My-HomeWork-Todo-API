class DeleteSubjectIndex < ActiveRecord::Migration[5.2]
  def change
    remove_column :todo_lists, :subjectIndex, :integer
  end
end
