class MoviesController < ApplicationController
  def index
  	@movies = Tmdb::Movie.popular.results
    @reviews = Review.all
  end

  def show
    @movie = Tmdb::Movie.detail(params[:movie_id])
    @trailer = Tmdb::Movie.videos(@movie.id).first
  end
end
