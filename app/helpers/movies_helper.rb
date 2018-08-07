module MoviesHelper

	def format_date release_date
		Date.parse(release_date).strftime("%A %b %d")
	end

	def format_genre
	end
end
