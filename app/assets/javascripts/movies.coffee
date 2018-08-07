# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


# $(document).on "turbolinks:load", ->
  
# 	response = null
# 	genre_array = []
# 	$.ajax 
# 		url: 'https://api.themoviedb.org/3/genre/movie/list?api_key=3a8665a61b95fbd07b51b1b8fe04584a&language=en-US',
# 		success: (data) ->
# 		     response = data

# 	$.ajax(url: "https://api.themoviedb.org/3/discover/movie?api_key=3a8665a61b95fbd07b51b1b8fe04584a&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&year=2018")
# 		.done (data) ->
			









# $.each data['results'], (index, value) ->
# 				genre_array = response.genres.filter((v) ->
# 	  				value.genre_ids.includes v.id
# 				).map((g) ->
# 	  				g.name
# 				)
# 				title = value.title
# 				date = new Date value.release_date
# 				options = { year: 'numeric', month: 'short', day: 'numeric' };
# 				release_date = date.toLocaleString('en-US', options)
# 				genre = genre_array[0]
# 				img = '<img src=\'https://image.tmdb.org/t/p/w200' + value.poster_path + '\'</img>'
# 				movie_card = '<div class="card"><div class="row "><div class="col-md-4">' + img + 
# 							 '</div><div class="col-md-8 px-3"><div class="card-block px-3"><h4 class="card-title">' + title + 
# 							 '</h4><p class="card-text">Release Date: ' + release_date + 
# 							 '</p><p class="card-text">Genre: ' + genre + 
# 							 '</p></div></div></div></div><br />'
# 				$('#movie-data').append(movie_card)









