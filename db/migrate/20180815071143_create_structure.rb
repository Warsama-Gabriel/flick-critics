class CreateStructure < ActiveRecord::Migration[5.2]
  def change
    create_table "reviews", force: :cascade do |t|
	    t.string "movie_id"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    t.text "body"
	    t.string "email"
	    t.string "title"
	    t.integer "rating"
	    t.index ["movie_id"], name: "index_reviews_on_movie_id"
  	end
  end
end
