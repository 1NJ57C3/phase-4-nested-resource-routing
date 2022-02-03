Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    # nested resource for reviews
    resources :reviews, only: [:show, :index]
  end

  resources :reviews, only: [:show, :index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index' # * Refactored to line 4
  # get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review' # * Refactored to line 4
end
