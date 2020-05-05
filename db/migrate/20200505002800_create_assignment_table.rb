class CreateAssignmentTable < ActiveRecord::Migration[5.2]
  def change
    create_table :assignment_tables do |t|
      t.string :name
      t.string :category
      t.string :deadline
      t.text :description
      t.boolean :submitted, :default => false
      t.string :grade, :default => 'Not Graded Yet'
      t.integer :course_id
    end
  end
end
