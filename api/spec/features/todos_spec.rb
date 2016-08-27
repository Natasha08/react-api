require 'rails_helper'

feature "Creates a New Todo" do
  scenario "User gets Todos Page" do
    visit todos_path
    expect(page).to have_content "new todo"
  end
  scenario "User clicks on create new todo" do
    visit todos_path
    click_on "new todo"
    fill_in "Text", with: 'Shopping'
    expect do
      click_on "Save Todo"
    end.to change { Todo.count }.by 1
  end
end
