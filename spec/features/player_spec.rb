require 'spec_helper'
require 'player'

describe Player do
  let(:player) { described_class.new('default') }
  let(:player2) { described_class.new('def') }

  it 'returns its name' do
    expect(player.name).to eq('default')
  end

  describe '#hit_points' do
    it "shows the players' hit points" do
      expect(player.hit_points).to eq(Player::HP)
    end
  end
end
