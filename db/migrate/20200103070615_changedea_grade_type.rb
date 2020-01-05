class ChangedeaGradeType < ActiveRecord::Migration[5.2]
  def change
    change_column :assignments, :grade, :string
  end
end
