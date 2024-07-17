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
    end

    def show
      "#{@@big_circle.colorize(@guess_colors_hash[1])}  #{@@big_circle.colorize(@guess_colors_hash[2])}  #{@@big_circle.colorize(@guess_colors_hash[3])}  #{@@big_circle.colorize(@guess_colors_hash[4])}"
    end

    attr_accessor :guess_colors_hash

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
    end

    def show
      "#{@@small_circle.colorize(@feedback_colors_hash[1])} #{@@small_circle.colorize(@feedback_colors_hash[2])} #{@@small_circle.colorize(@feedback_colors_hash[3])} #{@@small_circle.colorize(@feedback_colors_hash[4])}"
    end

    attr_accessor :feedback_colors_hash

  end

  def self.user_input_to_board_display player_choices, display_positions
    counter = 1
    player_choices.each do |color|
      display_positions[counter] = color
      counter += 1
    end
    display_positions
  end

  def self.feedback_to_board_display feedback, display_positions
    counter = 1
    feedback.each do |color|
      display_positions[counter] = color
      counter += 1
    end
    display_positions
  end
  
end

# guess_positions = Positions::GuessPositions.new

# user_input = [:green, :red, :yellow, :cyan]

# puts guess_positions.guess_colors_hash
# puts guess_positions.show_guess_pegs

# Positions.user_input_to_board_display(user_input, guess_positions.guess_colors_hash)

# puts guess_positions.guess_colors_hash
# puts guess_positions.show_guess_pegs



