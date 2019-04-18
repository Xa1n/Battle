require 'spec_helper'
require 'player'

describe Player do
  it 'returns its name' do
    player = described_class.new('M')
    expect(player.name).to eq('M')
  end
end
