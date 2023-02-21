Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    collection do
      # This is the same that | get "top", to: "restaurants#top" as:"top_estaurant"
      get :top
    end
    member do
      get :chef
    end
  end
  root "restaurants#index"
end
