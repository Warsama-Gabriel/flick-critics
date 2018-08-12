module MoviesHelper

	GENRES = Tmdb::Genre.movie_list
	CONFIG = Tmdb::Configuration.get
	BASE_URL = CONFIG.images.base_url
	
	def format_genre movie_item, style:
		genres = ''
		if style == 'button'
			genre_items = get_genres movie_item.genre_ids
			genre_items.each do |genre|
				genres << "<span class='btn btn-info btn-sm genre-text' style='margin:2px;'>#{genre}</span>"
			end
			genres.html_safe
		elsif style == 'list'
			genres = get_genres movie_item.map(&:id)
			genres.join('/')
		end
	end

	def get_genres object
		MoviesHelper::GENRES.select { |x| object.include?(x.id) }.map(&:name)
	end

	def format_poster movie_item, size:
		poster_size = CONFIG.images.poster_sizes[size]
		image_tag(BASE_URL + poster_size + movie_item.poster_path)
	end

	def format_date release_date
		Date.parse(release_date).strftime("%b, %d %Y") if release_date.present?
	end

	def generate_trailer width:, height:, key:
		trailer = "<iframe type='text/html' width='#{width}' height='#{height}'" +
  	 	"src='https://www.youtube.com/embed/#{key}?autoplay=0'" +
  		"frameborder='0'></iframe>"
  	trailer.html_safe
	end




end
