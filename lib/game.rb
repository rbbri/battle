class Game
attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    return @players.first
  end

  def player_2
    return @players.last
  end

  def current_turn
    @turn
  end

  def non_active
  return @players.first if @turn == player_2
  return @players.last if @turn == player_1
  end

  def switch_turns
    @turn = non_active
  end

  def attack(player)
    non_active.damage
    switch_turns
  end

  def game_over?
    player_1.dead || player_2.dead
  end

  def winner
    if game_over? == true
      player_1.dead ? player_2 : player_1
    end
  end

end
