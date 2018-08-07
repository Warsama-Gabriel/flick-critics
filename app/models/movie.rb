class Movie < ApplicationRecord
	has_many :reviews, foreign_key: "movie_id"
end
