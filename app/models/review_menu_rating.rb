class ReviewMenuRating < ApplicationRecord
  belongs_to :review
  belongs_to :menu_item
end
