class Goal < ApplicationRecord
  belongs_to :parent, class_name: :Goal, foreign_key: :parent_id
  has_many :children, class_name: :Goal, foreign_key: :parent_id
  validates :title, presence: true
  validates :progress, presence: true

  def self.update_parent
    return if self.parent.nil?
    parent_record = Goal.find_by(id: self.parent.id)
    parent_children_records = parent_record.children.count
    updated_parent_progress = self.progress / parent_children_count
    parent_record.update(progress: updated_parent_progress)
  end 
end
