module ApplicationHelper
     def category_color(category)
    colors = {
      'yakiniku' => 'danger',
      'side_dish' => 'success',
      'drink' => 'info',
      'dessert' => 'warning'
    }
    colors[category] || 'secondary'
  end
  
  def rating_stars(rating)
    full_stars = '★' * rating.to_i
    empty_stars = '☆' * (5 - rating.to_i)
    content_tag(:span, full_stars, class: 'text-warning') + 
    content_tag(:span, empty_stars, class: 'text-muted')
  end
end
