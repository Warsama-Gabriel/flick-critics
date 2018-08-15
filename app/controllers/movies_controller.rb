class MoviesController < ApplicationController
	include SortMovies

  def index
  	get_movies 5
    @reviews = Review.all
    @recent_reviews = Review.order(:created_at).limit(3)
  end

  def all
  	get_movies 10
  end

  def show
    @movie = Tmdb::Movie.detail(params[:movie_id])
    @trailer = Tmdb::Movie.videos(@movie.id).first
    @reviews = Review.where(movie_id: @movie.id)
  end
	
	def about
  end
	
	private
	def get_movies number, filter=nil
  	movies = Tmdb::Movie.popular.results
  	sort_movies movies, filter: params[:filter] if params[:filter]
  	@movies = Kaminari.paginate_array(movies).page(params[:page]).per(number)
  end
end
