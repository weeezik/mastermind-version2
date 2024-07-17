require 'io/console'

require_relative 'positions/number_to_color'

class Player
  include NumberToColor
    def initialize
      @turns = 12
    end
    attr_accessor :turns

      # enter their pegs
    def turn
      user_pegs = []
      1.times do
        user_input = STDIN.getch
        user_color = input_to_color user_input
        user_pegs << user_color
      end
      user_pegs
    end
    
    def full_turn
      4.times do
        self.turn
      end
      self.remove_turn
    end

      # delete one turn after every 4 pegs entered
    def remove_turn
      @turns -= 1
    end

end