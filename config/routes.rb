Rails.application.routes.draw do
  root 'movies#index'
  resources :reviews, except: [:new, :edit, :show, :update, :destroy] do 
  	get 'all', on: :collection
  end

  get 'about', to: 'movies#about', as: 'about'
  get 'review/new/:movie_id', to: 'reviews#new', as: 'new_review'
  get 'movies/all', to: 'movies#all', as: 'all_movies'
  get 'movies/sort/:filter', to: 'movies#index', as: 'sort'

  get 'movie/detail/:movie_id', to: 'movies#show', as: 'movie_show'
end
