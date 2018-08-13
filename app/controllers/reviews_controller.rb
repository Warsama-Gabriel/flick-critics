class ReviewsController < ApplicationController
	before_action :set_movie, only: [:new]

	def index
	end
	
	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		respond_to do |format|
			if @review.save
				format.js
			else
				format.json { render json: @review.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def set_movie
		@movie = Tmdb::Movie.detail(params[:movie_id])
	end

	def review_params
		params.require(:review).permit(:email, :body, :movie_id, :title, :rating)
	end

end
