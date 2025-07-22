class MenuItem < ApplicationRecord
    has_many :review_menu_ratings
    has_many :reviews, through: :review_menu_ratings

    enum category: {
    yakiniku: 0,
    side_dish: 1,
    drink: 2,
    dessert: 3
   }

   scope :active, -> { where(active: true) }
   scope :by_category, ->(category) { where(category: category) }

   def average_rating
    review_menu_ratings.average(:rating)&.round(1) || 0
   end

   def rating_count
    review_menu_ratings.count
   end

   def category_name
    {
     'yakiniku' => '焼肉',
     'side_dish' => 'サイドメニュー',
     'drink' => 'ドリンク',
     'dessert' => 'デザート'
    }[category]
   end
end
