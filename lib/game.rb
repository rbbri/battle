class Game
  attr_reader :turn

  def initialize(player_1, player_2, message)
    @players = [player_1, player_2]
    @turn = [player_1, player_2].sample
    @message = message
  end

  def self.create(player_1, player_2, message)
    @game = Game.new(player_1, player_2, message)
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

  def heal
    current_turn.healing
    switch_turns
  end

  def game_over?
    player_1.dead || player_2.dead
  end

  def winner
    player_1.dead ? player_2.name : in_progress
    player_2.dead ? player_1.name : in_progress
  end

  def loser
    player_2.dead ? player_2.name : in_progress
    player_1.dead ? player_1.name : in_progress
  end

private

  def in_progress
    raise "Game is not over"
  end

end
