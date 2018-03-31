class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.text :name
      t.text :qualification
      t.text :instrument
      t.text :description
      t.integer :likes

      t.timestamps
    end
  end
end
