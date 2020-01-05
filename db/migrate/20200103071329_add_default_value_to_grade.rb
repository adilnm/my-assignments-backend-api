class AddDefaultValueToGrade < ActiveRecord::Migration[5.2]
  def change
    change_column :assignments, :grade, :string, :default => 'Not Graded Yet'

  end
end
