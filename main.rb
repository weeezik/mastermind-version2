require_relative 'lib/game'

require_relative 'lib/game/computer'

module Positions
  class GuessPositions
    def initialize
      # 1 of 6 colored pegs 
      @colors = [:red, :green, :yellow, :blue, :cyan, :magenta]
      # empty or selected
      
    end
    attr_accessor :colors  
    # Behaviors:
      # add colored pegs to board
      # super + colors[user_input]
      # super fucntion refers to board methods, which will add a peg to the board of a color selected by the player
  end

  class FeedbackPositions
    attr_accessor :colors
    def initialize
      # black, white, or empty
      @colors = [:black, :white]
    end          
  end

end



class Board < Game
  include Positions
  #States:
      # visual game interface includes GuessPositions and Feedback Positions side by side
      # 4 guess pegs per row
      # 4 feedback pegs per row
  #Behaviors:
      # compare user pegs with computer pegs to output feedback pegs
end





