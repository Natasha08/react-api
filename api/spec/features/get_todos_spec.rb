require 'rails_helper'

feature " 'GET TODOS' route " do
  let!(:todo) { create :todo }
  scenario "Todos Page renders json" do
    visit todos_path
    
    expect(page).to have_content :json
    expect(page).to have_text 'Shopping'
  end
end
