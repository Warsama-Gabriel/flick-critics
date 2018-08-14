require 'rails_helper'
require 'pry'

RSpec.describe Review, type: :model do
  
  it "has a valid factory" do 
  	expect(FactoryBot.build(:review)).to be_valid
  end

  it "is invalid without an email" do
		review = FactoryBot.build(:review, email: nil)
		review.valid?
		expect(review.errors[:email]).to include("can't be blank")
	end
	
	it "is invalid without a body" do
		review = FactoryBot.build(:review, body: nil)
		review.valid?
		expect(review.errors[:body]).to include("can't be blank")
	end

	it "is invalid without a rating" do
		review = FactoryBot.build(:review, rating: nil)
		review.valid?
		expect(review.errors[:rating]).to include("can't be blank")
	end

	it "finds the average review rating by movie id" do 
		review_1 = FactoryBot.create(:review, rating: 1)
		review_2 = FactoryBot.create(:review, rating: 2)
		review_3 = FactoryBot.create(:review, rating: 2)
		review_4 = FactoryBot.create(:review, rating: 3)
		binding.pry
		expect(Review.find_average_rating_by_movie(review_1.movie_id)).to eq(2)
	end

end
