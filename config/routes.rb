Rails.application.routes.draw do
  root 'movies#index'
  resources :reviews, except: [:new, :edit, :show, :update, :destroy]
  get 'review/new/:movie_id', to: 'reviews#new', as: 'new_review'

  get 'movie/detail/:movie_id', to: 'movies#show', as: 'movie_show'
end
