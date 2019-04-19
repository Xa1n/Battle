require_relative 'game'

class Player

  attr_reader :name, :hit_points

  HP = 100

  def initialize(name, hit_points = HP)
    @name = name
    @hit_points = hit_points
  end

  def reduce_hp
    @hit_points -= 10
  end

end
