require 'rails_helper'

RSpec.feature "Reviews", type: :feature do
  scenario "user creates a new review", js: true do 
  	review = FactoryBot.create(:review)

  	visit root_path
  	first(:link, "write a review").click
  	sleep 2
  	find("img[alt='1']").click
  	find("img[alt='2']").click
  	find("img[alt='3']").click
  	fill_in "Email", with: review.email
  	fill_in 'review_body', with: review.body
  	click_button "Submit"
  	expect(page).to have_text review.body
  	save_and_open_page
  end
end
