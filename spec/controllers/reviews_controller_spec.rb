require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
	
	before do 
		10.times do |f|
			FactoryBot.create(:review)
		end
	end

	describe "#all" do
		it "responds successfully" do 
			get :all
			expect(response).to have_http_status "200"
		end  
	end

	describe "#new" do
		it "responds successfully with js" do 
			get :new, xhr: true, params: { movie_id: "299536" }
			expect(response.content_type).to eq("text/javascript")
		end 
	end

	
	describe "#create" do 
		it "adds a review" do
			reviews = Review.all 
			review_params = FactoryBot.attributes_for(:review)
			expect {
				post :create, xhr: true, params: { review: review_params }
			}.to change(reviews, :count).by(1)
		end
	end


end
