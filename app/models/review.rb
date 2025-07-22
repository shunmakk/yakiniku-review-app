class Review < ApplicationRecord
  has_many :review_menu_ratings, dependent: :destroy
  has_many :menu_items, through: :review_menu_ratings
  validates :customer_name, presence: true
  validates :overall_rating, presence: true, inclusion: { in: 1..5 }
  validates :content, presence: true, length: { minimum: 10, maximum: 500 }
  validates :visited_at, presence: true
  scope :recent, -> { order(visited_at: :desc) }
  scope :high_rated, -> { where('overall_rating >= ?', 4) }
  scope :this_month, -> { where(visited_at: Date.current.beginning_of_month..Date.current.end_of_month) }
  accepts_nested_attributes_for :review_menu_ratings, allow_destroy: true
end
