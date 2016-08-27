require 'rails_helper'

feature "Getting a Home Page" do
  scenario "User gets the home page" do
    visit root_path
    save_and_open_page
  end
end
