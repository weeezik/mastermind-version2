class Game
  # States:
    # during the game or game has ended
  @@game_start = true
  def Game::status
    @@game_start
  end
  def Game::end
    @@game_start = false
  end
  # Behaviors: 
    # judge feedback pegs to determine if user wins
  def peg_check
    # judge feedback pegs to determine if user wins/loses (i.e., comparison logic)
    # if there is winner/loser
    @@game_start = false
    @@game_start
  end
  def turn_check
    # judge player turns to determine if user wins/loses
    # if there is winner, return
    @@game_start = false
    @@game_start
  end
end

class Board
  #States:
      # visual game interface includes GuessPositions and Feedback Positions side by side
  #Behaviors:
      # compare user pegs with computer pegs to output feedback pegs
end

class GuessPositions
  # States:
    # 4 per row
    # empty or selected
    # 1 of 6 colored pegs 
  # Behvaviors:
    # add colored pegs
end

class FeedbackPositions
  # States:
        # black, white, or empty
end

class Player
  # States:
      # turns = 12 (to start)
    @@turns = 12
  # Behaviors: 
      # access turns
    def Player.turns
      @@turns
    end
      # enter their pegs
      # delete one turn after every 4 pegs entered
    def Player.remove_turn
      @@turns -= 1
    end
end

class Computer
  # Behaviors:
  # generate random peg combination
  def self.generate_secret_code colors
    comp_pegs = []
    4.times do
      comp_pegs << colors.sample
    end
    comp_pegs
  end
end