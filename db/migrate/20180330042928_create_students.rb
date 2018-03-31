class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.text :name
      t.text :phone
      t.date :dob
      t.integer :instructor_id
      t.integer :user_id

      t.timestamps
    end
  end
end
