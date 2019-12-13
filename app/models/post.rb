class Post < ApplicationRecord
  enum status: [ :draft, :rejected, :active ]

  has_and_belongs_to_many :tags

  accepts_nested_attributes_for :tags

  scope :active, -> { where status: 2 }
  scope :recent, ->(i) { active.limit i }
end
