class Player
  DEFAULT_HIT_POINTS = 60
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def name
    return @name
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

  def hit_points
    return @hit_points
  end

end
