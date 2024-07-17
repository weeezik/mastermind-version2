require 'io/console'

require_relative 'positions/number_to_color'
require_relative 'positions'

class Player
  include Positions
  include NumberToColor
    def initialize
      @turns = 12
      @position_values = [:grey, :grey, :grey, :grey]
    end
    attr_accessor :turns, :position_values

      # enter their pegs
    def turn guess_position_array
      counter = 0
      1.times do
        user_input = STDIN.getch
        user_color = input_to_color user_input
        guess_position_array[counter] = user_color
        counter += 1 
      end
      # Positions.user_input_to_board_display(guess_position_array, guess_position_hash)
      guess_position_array
    end
    
    # def full_turn position_hash
    #  full_turn_output = 4.times do
    #     self.turn 
    #   end
    #   self.remove_turn
    #   full_turn_output
    # end

      # delete one turn after every 4 pegs entered
    def remove_turn
      @turns -= 1
    end

end