require 'colorize'

require_relative 'lib/game'
require_relative 'lib/game/computer'
require_relative 'lib/game/player'
require_relative 'lib/game/positions'

# Game flow goes here. Endpoint of all files is here. Think states/behaviors 
# from the bottom up to this point/this file.

mastermind = Game.new

# 1. Computer generate's secret code.
computer = Computer.new
computer_input = computer.generate_secret_code
# Create new player
player = Player.new
# Create position objects
guess_positions = Positions::GuessPositions.new
feedback_positions = Positions::FeedbackPositions.new

puts "Each number corresponds to the color placed on the board.".colorize(:bold)
puts "1=>#{"Red".colorize(:red)} 2=>#{"Green".colorize(:green)} 3=>#{"Yellow".colorize(:yellow)} 4=>#{"Blue".colorize(:blue)} 5=>#{"Cyan".colorize(:cyan)} 6=>#{"Magenta".colorize(:magenta)}"

puts guess_positions.show + "   " + feedback_positions.show + "\n"

while mastermind.game_on == true do
  # 2. User inputs guess
  player_input = player.full_turn
  Positions.user_input_to_board_display(player_input, guess_positions.guess_colors_hash)
# 3a. Check if user input matches computer's secret code.
  feedback_pegs = mastermind.peg_check(player_input, computer_input)
  Positions.feedback_to_board_display(feedback_pegs, feedback_positions.feedback_colors_hash)
  # Show output
  puts guess_positions.show + "   " + feedback_positions.show
# 3b. Check user turn count
  puts "You have #{player.turns} turns left."
  mastermind.turn_check(player.turns)
end
