class DashboardController < ApplicationController
  def index
    @total_reviews = Review.count
    @average_rating = Review.average(:overall_rating)&.round(1) || 0
    @recent_reviews = Review.recent.limit(5)
    @top_menu_items = top_rated_menu_items
    @daily_reviews = Review.group_by_day(:visited_at, last: 30).count
    @rating_distribution = Review.group(:overall_rating).count
  end

  def menu_analysis
    @menu_items = MenuItem.includes(:review_menu_ratings).active
    @category_ratings = category_average_ratings
  end

  def time_analysis
    @hourly_distribution = Review.group_by_hour_of_day(:visited_at).count
    @weekly_distribution = Review.group_by_day_of_week(:visited_at).count
    @monthly_trend = Review.group_by_month(:visited_at).average(:overall_rating)
  end

  private

  def top_rated_menu_items
    MenuItem.joins(:review_menu_ratings)
            .group('menu_items.id')
            .order('AVG(review_menu_ratings.rating) DESC')
            .limit(5)
  end

  def category_average_ratings
    MenuItem.joins(:review_menu_ratings)
            .group(:category)
            .average('review_menu_ratings.rating')
            .transform_keys { |k| MenuItem.categories.key(k) }
  end
end
