class Goal < ApplicationRecord
  after_save :updated_parent
  belongs_to :parent, optional: true, class_name: :Goal, foreign_key: :parent_id
  has_many :children, class_name: :Goal, foreign_key: :parent_id
  validates :title, presence: true
  validates :progress, presence: true

  def updated_parent
    return if parent.nil?

    parent_record = Goal.find_by(id: parent_id)
    parent_children_records = parent_record.children.count
    updated_parent_progress = progress / parent_children_records
    parent_record.update(progress: updated_parent_progress)
  end
end
