require 'spec_helper'
require 'player'

RSpec.describe Game do

  subject(:game) { described_class.new }
  let(:player) { Player.new('default') }
  let(:player2) { Player.new('def') }

  describe '#attack' do
    it 'reduces HP by 10' do
      expect { game.attack(player2) }.to change { player2.hit_points }.by(-10)
    end
  end

  describe '#reduce_hp' do
    it "reduces attacked player's hp" do
    expect(player2).to receive(:reduce_hp)
    game.attack(player2)
    end
  end
end
