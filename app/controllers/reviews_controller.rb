class ReviewsController < ApplicationController

	def index
	end
	
	def new
		@movie_id = params[:movie_id]
	end

	def create
	end

end
