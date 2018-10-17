class Game
  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def current_turn
    @turn
  end

  def non_active
    return player_1 if @turn == player_2
    return player_2 if @turn == player_1
  end

  def switch_turns
    @turn = non_active
  end

  def attack
    non_active.damage
    switch_turns
  end

  def game_over?
    player_1.dead || player_2.dead
  end

  def winner
    player_1.dead && game_over? ? player_2 : player_1
  end

  def loser
    player_2.dead && game_over? ? player_2 : player_1
  end
end
