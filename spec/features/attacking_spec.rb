feature 'Attacking' do

  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 attacked Player 2'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Player 2 attacked Player 1'
  end

  context 'when dealing set amount of damage' do
    before do
      allow(Kernel).to receive(:rand).and_return(10)
    end

    scenario 'reduce Player 2 HP by 10' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Player 2: 100HP'
      expect(page).to have_content 'Player 2: 90HP'
    end

    scenario 'reduce Player 1 HP by 10' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Player 1: 100HP'
      expect(page).to have_content 'Player 1: 90HP'
    end
  end


  context 'when dealing random damage' do
    scenario 'reduce Player 2 HP by a random amount' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content 'Player 2: 100HP'
    end

    scenario 'reduce Player 1 HP by a random amount' do
      sign_in_and_play
      2.times { attack_and_confirm }
      expect(page).not_to have_content 'Player 1: 100HP'
    end
  end
end
