class Player

  attr_reader :name, :hit_points

  HP = 100

  def initialize(name)
    @name = name
    @hit_points = HP
  end

  def attacked
    @hit_points -= 10
  end

end
