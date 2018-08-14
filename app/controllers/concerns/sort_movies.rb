module SortMovies
	extend ActiveSupport::Concern

	def sort_movies movies, filter:
		if filter == 'title'
			movies.sort_by! { |x| x.title }
		elsif filter == 'genre'
			movies.sort_by! { |x| x.genre }
		elsif filter == 'release_date'
			movies.sort_by! { |x| x.release_date }.reverse!
		end
		movies
	end
end