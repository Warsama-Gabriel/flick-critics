class MoviesController < ApplicationController
  def index
  	movies = Tmdb::Movie.popular.results
  	@movies = Kaminari.paginate_array(movies).page(params[:page]).per(5)
    @reviews = Review.order(created_at: :desc).limit(3)
  end

  def show
    @movie = Tmdb::Movie.detail(params[:movie_id])
    @trailer = Tmdb::Movie.videos(@movie.id).first
  end
end
