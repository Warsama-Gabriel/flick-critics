Rails.application.routes.draw do
  root 'movies#index'
  resources :reviews


  get 'movie/detail/:movie_id', to: 'movies#show', as: 'movie_show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


#    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        movies#index
#                   reviews GET    /reviews(.:format)                                                                       reviews#index
#                           POST   /reviews(.:format)                                                                       reviews#create
#                new_review GET    /reviews/new(.:format)                                                                   reviews#new
#               edit_review GET    /reviews/:id/edit(.:format)                                                              reviews#edit
#                    review GET    /reviews/:id(.:format)                                                                   reviews#show
#                           PATCH  /reviews/:id(.:format)                                                                   reviews#update
#                           PUT    /reviews/:id(.:format)                                                                   reviews#update
#                           DELETE /reviews/:id(.:format)                                                                   reviews#destroy
#                movie_show GET    /movie/detail/:movie_id(.:format)                                                        movies#show
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create                                                      reviews#destroy
end
