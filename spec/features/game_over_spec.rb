feature 'Game over' do
  context 'when Player 1 reaches 0 HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(1000)
      click_button 'Attack'
    end

    scenario 'Player 1 loses' do
      expect(page).to have_content 'Player 1 loses!'
    end
  end

  context 'when Player 2 reaches 0 HP first' do
    before do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(100)
      click_button 'Attack'
    end

    scenario 'Player 2 loses' do
      expect(page).to have_content 'Player 2 loses!'
    end
  end
end
