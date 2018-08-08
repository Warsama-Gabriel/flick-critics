class RemoveForeignKeyFromReviews < ActiveRecord::Migration[5.2]
  def change
  	rename_table :revews, :reviews
  	remove_foreign_key :reviews, column: :movie_id 
  end
end
