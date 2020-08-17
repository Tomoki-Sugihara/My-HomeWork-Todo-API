class CreateSubjectLists < ActiveRecord::Migration[5.2]
  def change
    create_table :subject_lists do |t|

      t.string :key
      t.string :title
      t.timestamps
    end
  end
end
