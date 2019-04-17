require 'spec_helper'

feature "Testing infrastructure" do
  scenario 'checks the hompage message' do
    visit("/")
    expect(page).to have_content("Testing infrastructure working!")
  end

end
