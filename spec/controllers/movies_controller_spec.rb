require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

	describe "#index" do
		it "responds successfully" do 
			get :index 
			expect(response).to have_http_status "200"
		end 
	end

	describe "#all" do
		it "responds successfully" do 
			get :all 
			expect(response).to have_http_status "200"
		end 
	end

	describe "#show" do
		it "responds successfully" do 
			get :show, params: { movie_id: "299536" }
			expect(response).to have_http_status "200"
		end 
	end
end
