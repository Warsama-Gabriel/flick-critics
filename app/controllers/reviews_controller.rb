class ReviewsController < ApplicationController
	before_action :set_movie, only: [:new]

	def index
	end
	
	def new
		@review = Review.new
	end

	def create
	end

	private

	def set_movie
		@movie = Tmdb::Movie.detail(params[:movie_id])
	end

end
