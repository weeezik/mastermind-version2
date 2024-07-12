require 'io/console'

require_relative 'positions/number_to_color'

class Player
  include NumberToColor
  # States:
      # turns = 12 (to start)
    def initialize
      @turns = 12
    end

  # Behaviors: 
      # access turns
    attr_accessor :turns

      # enter their pegs
    def turn
      user_pegs = []
      4.times do
        user_input = STDIN.getch
        user_color = input_to_color user_input
        user_pegs << user_color
      end
      user_pegs
    end

      # delete one turn after every 4 pegs entered
    def remove_turn
      @turns -= 1
    end

end