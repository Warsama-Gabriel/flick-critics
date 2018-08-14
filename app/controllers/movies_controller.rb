class MoviesController < ApplicationController
	
	def index
  	get_movies 5
    @reviews = Review.order(created_at: :desc).limit(3)
  end

  def all
  	get_movies 10
  end

  def show
    @movie = Tmdb::Movie.detail(params[:movie_id])
    @trailer = Tmdb::Movie.videos(@movie.id).first
    @reviews = Review.where(movie_id: @movie.id)
  end

  private

  def get_movies number
  	movies = Tmdb::Movie.popular.results
  	@movies = Kaminari.paginate_array(movies).page(params[:page]).per(number)
  end
end
