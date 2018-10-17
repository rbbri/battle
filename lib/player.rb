class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def damage
    @hit_points -= mod.to_f * 10
  end

  def dead
    @hit_points <= 0
  end

  private

  def mod
    [0, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, 0.75, 0.75, 1].sample
  end
end
