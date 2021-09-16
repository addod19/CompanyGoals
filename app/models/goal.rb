class Goal < ApplicationRecord
  has_one :parent
  has_many :children, class_name: 'Goal', foreign_key: :parent_id

  validates :title, presence: true
  validates :progress, presence: true
end
