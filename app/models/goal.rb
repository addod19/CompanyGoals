class Goal < ApplicationRecord
  belongs_to :parent, class: Goal
  has_many :children, class: Goal, foreign_key: :parent_id
  has_many :grandchildren, class: Goal, through: :children, source: :children

  validates :title, presence: true,
  validates :progress, presence: true,
end
