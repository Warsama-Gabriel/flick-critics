module MoviesHelper

	GENRES = Tmdb::Genre.movie_list

	def format_genre movie_item
		MoviesHelper::GENRES.select { |x| movie_item.genre_ids.include?(x.id) }.map(&:name).first
	end

	def format_date release_date
		Date.parse(release_date).strftime("%A %b %d")
	end
end
