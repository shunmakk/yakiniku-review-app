#ルーティング設定
Rails.application.routes.draw do
  get "menu_items/index"
  get "dashboard/index"
  get "reviews/index"
  get "reviews/new"
  get "reviews/create"
  get "reviews/show"
  root 'reviews#new'
  
  resources :reviews do
    collection do
      get 'thanks'
    end
  end
  
  resources :menu_items, only: [:index]
  
  namespace :dashboard do
    get 'index'
    get 'menu_analysis'
    get 'time_analysis'
  end
end