class Post < ApplicationRecord
  enum status: [ :draft, :rejected, :active ]

  has_many :tags, through: :post_tags
  has_one_attached :hero_image

  accepts_nested_attributes_for :tags

  scope :active, -> { where status: 2 }
  scope :recent, ->(i) { active.limit i }
end
