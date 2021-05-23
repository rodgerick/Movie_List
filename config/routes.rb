Rails.application.routes.draw do
  # get 'movies/index'
  # get 'movies/show'
  # get 'movies/new'
  # get 'movies/edit'
  # get 'genres/index'
  # get 'genres/show'
  # get 'genres/new'
  # get 'genres/edit'
  root "genres#index"

  resources :genres do 
    resources :movies
  end
end
