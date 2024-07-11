require 'io/console'

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

require_relative 'lib/computer'


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

class Player < Game
  # States:
      # turns = 12 (to start)
    @@turns = 12
  # Behaviors: 
      # access turns
    def Player.turns
      @@turns
    end
      # enter their pegs
    def Player.turn
      user_pegs = []
      4.times do
        user_input = STDIN.getch #numbers 1-6
        #convert user_input to user_color using input_to_color super method
        user_pegs << user_color
      end
      
    end
      # delete one turn after every 4 pegs entered
    def Player.remove_turn
      @@turns -= 1
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


# def input_to_color input
#   case input
#   when "1"
#     :red
#   when "2"
#     :green
#   when "3"
#     :yellow
#   when "4"
#     :blue
#   when "5"
#     :cyan
#   when "6"
#     :magenta
#   else
#     puts "Invalid input"
#   end
# end


