class MoviesController < ApplicationController
  def index
  	config = Tmdb::Configuration.get
  	@base_url = config.images.base_url
  	@movies = Tmdb::Discover.movie(language: 'en-US', 
  																 sort_by: 'popularity.desc', 
  																 include_adult: false,
  																 page: 1
  																).results
  	
  end
end
