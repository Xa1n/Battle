require 'spec_helper'
require 'player'

describe Player do
  let(:player) { described_class.new('default') }

  it 'returns its name' do
    expect(player.name).to eq('default')
  end

  describe '#hit_points' do
    it "shows the players' hit points" do
      expect(player.hit_points).to eq(Player::HP)
    end
  end

  describe '#attacked' do
    it 'reduces HP by 10' do
      expect { player.attacked }.to change { player.hit_points }.by(-10)
    end
  end
end
