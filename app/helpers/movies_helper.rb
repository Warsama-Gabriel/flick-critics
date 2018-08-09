module MoviesHelper

	GENRES = Tmdb::Genre.movie_list
	CONFIG = Tmdb::Configuration.get
	BASE_URL = CONFIG.images.base_url
	

	def format_genre movie_item, style=nil
		genres = ''
		if style == 'button'
			genre_items = MoviesHelper::GENRES.select { |x| movie_item.genre_ids.include?(x.id) }.map(&:name)
			genre_items.each do |genre|
				genres << "<span class='btn btn-success btn-sm genre-text' style='margin:2px;'>#{genre}</span>"
			end
			genres.html_safe
		elsif style == 'list'
			binding.pry
			genre_items = MoviesHelper::GENRES.select { |x| movie_item.map(&:id).include?(x.id) }.map(&:name)
			genre_items.join('/')
		end
	end

	def format_poster movie_item, size:
		poster_size = CONFIG.images.poster_sizes[size]
		image_tag(BASE_URL + poster_size + movie_item.poster_path)
	end

	def format_date release_date
		Date.parse(release_date).strftime("%b, %d %Y")
	end
end
