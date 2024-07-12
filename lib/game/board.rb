class Board < Game
  include Positions
  #States:
      # visual game interface includes GuessPositions and Feedback Positions side by side
      # 4 guess pegs per row
      # 4 feedback pegs per row
  #Behaviors:
      # compare user pegs with computer pegs to output feedback pegs
end