class Review < ApplicationRecord
  validates :body, :email, :rating, presence: true

  def self.find_average_rating_by_movie movie_id
  	ratings = where(movie_id: movie_id).map(&:rating)
  	if ratings.any?
  		ratings.inject {|sum, el| sum + el } / ratings.size
  	end
	end
end
