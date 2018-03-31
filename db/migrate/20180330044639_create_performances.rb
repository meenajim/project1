class CreatePerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :performances do |t|
      t.integer :student_id
      t.date :performance_date
      t.text :description
      t.text :media

      t.timestamps
    end
  end
end
