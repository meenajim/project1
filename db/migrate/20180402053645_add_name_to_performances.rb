class AddNameToPerformances < ActiveRecord::Migration[5.1]
  def change
    add_column :performances, :name, :text
  end
end
