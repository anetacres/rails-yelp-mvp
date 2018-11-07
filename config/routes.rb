Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
end

# GET "restaurants" restaurants_path
# GET "restaurants/new" new_restaurant_path
# POST "restaurants"
# GET "restaurants/:id" restaurant_path
# GET "restaurants/:restaurant_id/reviews/new" new_restaurant_review_path
# POST "restaurants/:restaurant_id/reviews" restaurant_reviews_path
