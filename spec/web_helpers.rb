def sign_in_and_play(computer_opponent = false)
  visit('/')
  fill_in :player_1_name, with: 'Player 1'
  fill_in :player_2_name, with: 'Player 2' unless computer_opponent
  click_button 'Submit'
end

def attack_and_confirm
  click_button 'Attack'
  click_button 'OK'
end
