class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, unique: true
      t.string :password
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.text :bio

      t.timestamps
    end
  end
end
