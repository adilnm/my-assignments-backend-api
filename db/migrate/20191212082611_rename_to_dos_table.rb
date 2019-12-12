class RenameToDosTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :to_dos, :assignments
  end
end
