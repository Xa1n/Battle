require 'spec_helper'

feature 'Player 1 attacks and gets confirmation' do
  scenario 'player 1 inputs attack' do
    sign_in_and_play
    find_button('Attack').click
  end
  scenario 'recieve confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Player 1 attacked Player 2'
  end
end
