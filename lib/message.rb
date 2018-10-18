class Message

attr_reader :game

def initialize
  @game = Game.instance
end

def start
  "Let Battle Commence!"
end

def attack
  "#{game.current_turn.name} attacked #{game.non_active.name}"
end


end
