require 'rails_helper'

RSpec.feature "Reviews", type: :feature do
  scenario "user creates a new review", js: true do 
  	review = FactoryBot.create(:review)

  	visit root_path
  	first(:link, "write a review").click
  	save_and_open
  end
end
