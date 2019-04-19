require 'player'

describe Player do
  subject(:player_1) { Player.new('Player 1') }
  subject(:player_2) { Player.new('Player 2') }

  describe '#name' do
    it 'returns the name' do
      expect(player_1.name).to eq 'Player 1'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#damage' do
    it 'reduces the player hit points' do
      expect { player_1.damage(10) }.to change { player_1.hit_points }.by(-10)
    end
  end

  describe '#computer?' do
    it 'returns false' do
      expect(player_1.computer?).to be false
    end
  end
end
