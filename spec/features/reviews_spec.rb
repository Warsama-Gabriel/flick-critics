require 'rails_helper'
require 'pry'

RSpec.feature "Reviews", type: :feature do
  scenario "user creates a new review", js: true do 
  	review = FactoryBot.create(:review)
		
		visit root_path
  	first(:link, "write a review").click
  	sleep 2
  	find("img[alt='1']").click
  	fill_in "Email", with: review.email
  	fill_in 'review_body', with: review.body
  	click_button "Submit"
  	expect(page).to have_text review.body
  	expect(page.has_css?('div.review-data')).to be true
  end
end
