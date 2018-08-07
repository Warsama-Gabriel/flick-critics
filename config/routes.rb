Rails.application.routes.draw do
  root 'movies#index'
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # Prefix Verb   URI Pattern                                                                        					Controller#Action
  #            movies_index GET    /movies/index(.:format)                                                                  movies#index
  #                 reviews GET    /reviews(.:format)                                                                       reviews#index
  #                         POST   /reviews(.:format)                                                                       reviews#create
  #              new_review GET    /reviews/new(.:format)                                                                   reviews#new
  #             edit_review GET    /reviews/:id/edit(.:format)                                                              reviews#edit
  #                  review GET    /reviews/:id(.:format)                                                                   reviews#show
  #                         PATCH  /reviews/:id(.:format)                                                                   reviews#update
  #                         PUT    /reviews/:id(.:format)                                                                   reviews#update
  #                         DELETE /reviews/:id(.:format)                                                                   reviews#destroy
end
