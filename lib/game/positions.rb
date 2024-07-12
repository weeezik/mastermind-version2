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