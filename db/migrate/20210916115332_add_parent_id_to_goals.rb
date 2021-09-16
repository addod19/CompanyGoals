class AddParentIdToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :parent_id, :integer
  end
end
