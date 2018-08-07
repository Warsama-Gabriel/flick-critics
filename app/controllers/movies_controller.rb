class MoviesController < ApplicationController
  def index
  	@movies = Tmdb::Search.movie('terminator', page: 2, language: 'it').results
  	config = Tmdb::Configuration.get
  	@base_url = config.images.base_url
  	@poster_size = config.images.poster_sizes[2]
  end
end
