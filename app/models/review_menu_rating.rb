class ReviewMenuRating < ApplicationRecord
  belongs_to :review
  belongs_to :menu_item

  validates :rating, inclusion: { in: 1..5 }, allow_nil: true
end
