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
      # 4 guess pegs per row
      # 4 feedback pegs per row
  #Behaviors:
      # compare user pegs with computer pegs to output feedback pegs
end

# class Positions
#   def initialize (type)
#     if type == "guess"
#         @colors = [:red, :green, :yellow, :blue, :cyan, :magenta]
#     elsif type == "feedback"
#         @colors = [:black, :white]
#     else
#       "Invalid position type"
#     end
#   end
#   attr_accessor @colors
# end


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