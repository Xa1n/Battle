require 'spec_helper'

feature "Player 1 views Player 2's hit point" do
  scenario "Displays Player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content('100HP')
  end
end
