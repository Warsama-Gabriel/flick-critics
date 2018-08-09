class MoviesController < ApplicationController
  def index
  	@movies = Tmdb::Discover.movie(language: 'en-US', 
  																 sort_by: 'popularity.desc', 
  																 include_adult: false,
  																 page: 1
  																).results
    @reviews = Review.all
  end

  def show
    @movie = Tmdb::Movie.detail(params[:movie_id])
  end
end
