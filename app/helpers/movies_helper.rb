module MoviesHelper

	GENRES = Tmdb::Genre.movie_list
	CONFIG = Tmdb::Configuration.get
	BASE_URL = CONFIG.images.base_url
	POSTER_SIZE = CONFIG.images.poster_sizes[2]

	def format_genre movie_item
		MoviesHelper::GENRES.select { |x| movie_item.genre_ids.include?(x.id) }.map(&:name).first
	end

	def format_poster movie_item
		image_tag(BASE_URL + POSTER_SIZE + movie_item.poster_path)
	end

	def format_date release_date
		Date.parse(release_date).strftime("%b %d %Y")
	end
end
