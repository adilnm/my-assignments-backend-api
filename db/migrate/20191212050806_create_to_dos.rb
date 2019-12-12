class CreateToDos < ActiveRecord::Migration[5.2]
  def change
    create_table :to_dos do |t|
      t.string :name
      t.string :category
      t.date :deadline
      t.text :description
      t.boolean :submitted
      t.integer :grade

      t.timestamps
    end
  end
end
