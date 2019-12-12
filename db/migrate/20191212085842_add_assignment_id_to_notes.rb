class AddAssignmentIdToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :assignment_id, :integer
  end
end
