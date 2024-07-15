require 'colorize'

module Positions
  class GuessPositions
    @@big_circle = "\u2B24".encode('utf-8')
    def initialize
      @guess_colors_hash = {
        1 => :grey,
        2 => :grey,
        3 => :grey,
        4 => :grey
      }
      @guess_pegs = "#{@@big_circle.colorize(@guess_colors_hash[1])}  #{@@big_circle.colorize(@guess_colors_hash[2])}  #{@@big_circle.colorize(@guess_colors_hash[3])}  #{@@big_circle.colorize(@guess_colors_hash[4])}"      
    end
    def display
      @guess_pegs
    end
    # Behaviors:
      # add colored pegs to board
    def add_user_pegs_to_board user_pegs
      player_input
    end
      # super + colors[user_input]
      # super fucntion refers to board methods, which will add a peg to the board of a color selected by the player
  end

  class FeedbackPositions
    @@small_circle = "\u23FA".encode('utf-8')

    def initialize
      @feedback_colors_hash = {
        1 => :grey,
        2 => :grey,
        3 => :grey,
        4 => :grey
      }
      @feedback_pegs = "#{@@small_circle.colorize(@feedback_colors_hash[1])} #{@@small_circle.colorize(@feedback_colors_hash[2])} #{@@small_circle.colorize(@feedback_colors_hash[3])} #{@@small_circle.colorize(@feedback_colors_hash[4])}"
    end
    def display
      @feedback_pegs
    end          
  end

end

guess_positions = Positions::GuessPositions.new
feedback_positions = Positions::FeedbackPositions.new
puts guess_positions.display + "    " + feedback_positions.display

