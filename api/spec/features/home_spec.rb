require 'rails_helper'

feature "Home Page actions" do
  scenario "User gets the home page" do
    visit root_path
    expect(page).to have_content "Todo App Home Page"
  end
  scenario "User clicks on 'todos' link" do
    visit root_path
    click_on "Todos page"
  end
end
