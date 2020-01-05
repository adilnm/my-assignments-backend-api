class ChangedeaDeadlineType < ActiveRecord::Migration[5.2]
  def change
    change_column :assignments, :deadline, :string
  end
end
