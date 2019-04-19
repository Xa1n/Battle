feature 'Playing vs. a Computer' do
  scenario 'computer gets an automatic name' do
    sign_in_and_play(true)
    expect(page).to have_content 'Player 1 vs. Computer'
  end

  scenario 'computer makes an attack' do
    sign_in_and_play(true)
    attack_and_confirm
    expect(page).to have_content 'Computer attacked Player 1'
  end

  scenario 'computer attack damages player' do
    sign_in_and_play(true)
    attack_and_confirm
    click_button 'OK'
    expect(page).not_to have_content 'Player 1: 100HP'
  end

  scenario 'computer can lose' do
    sign_in_and_play(true)
    allow(Kernel).to receive(:rand).and_return(100)
    click_button 'Attack'
    expect(page).to have_content 'Computer loses!'
  end

  scenario 'computer can win' do
    sign_in_and_play(true)
    click_button 'Attack'
    allow(Kernel).to receive(:rand).and_return(100)
    click_button 'OK'
    expect(page).to have_content 'Player 1 loses!'
  end
end
