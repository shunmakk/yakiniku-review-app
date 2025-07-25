class ReviewsController < ApplicationController
  def index
     @reviews = Review.includes(:menu_items).recent.page(params[:page])
  end

  def new
     @review = Review.new
     @menu_items = MenuItem.active.order(:category, :name)
    # メニューアイテムごとの評価フォーム
    @menu_items.each do |item|
      @review.review_menu_ratings.build(menu_item: item)
    end
  end

  def create
    @review = Review.new(review_params)
    @review.visited_at ||= Time.current
    
    if @review.save
      redirect_to thanks_reviews_path
    else
      @menu_items = MenuItem.active.order(:category, :name)
      render :new
    end
  end

  def show
     @review = Review.find(params[:id])
  end

  def thanks
  end

  private
  def review_params
    params.require(:review).permit(
      :customer_name,
      :overall_rating,
      :content,
      :visited_at,
      review_menu_ratings_attributes: [:menu_item_id, :rating, :comment]
    )
  end
end