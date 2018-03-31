class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string :password_digest
      t.text :phone
      t.text :user_type

      t.timestamps
    end
  end
end
