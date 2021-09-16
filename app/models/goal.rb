class Goal < ApplicationRecord
  belongs_to :parent, class_name: :Goal, foreign_key: :parent_id
  has_many :children, class_name: :Goal, foreign_key: :parent_id


  validates :title, presence: true
  validates :progress, presence: true
end
