class Game
  # States:
    # during the game or game has ended
  # Behaviors: 
    # judge feedback pegs to determine if user wins
    # judge player turn count to determine if user wins
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
  # Behaviors: 
      # access turns
      # enter their pegs
      # delete one turn after every 4 pegs entered
end

class Computer
  # Behaviors:
  # generate random peg combination
end