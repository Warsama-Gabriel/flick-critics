class ChangeMovieIdType < ActiveRecord::Migration[5.2]
  def change
  	change_column :reviews, :movie_id, :string
  end
end
