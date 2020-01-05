class AddDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :assignments, :submitted, :boolean, :default => false
  end
end
