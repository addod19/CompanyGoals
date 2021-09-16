class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.integer :progress
      t.text :children, array: true, default: []

      t.timestamps
    end
  end
end
