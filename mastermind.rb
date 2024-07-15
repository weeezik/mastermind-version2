require 'colorize'

require_relative 'lib/game'
require_relative 'lib/game/computer'
require_relative 'lib/game/player'

# Game flow goes here. Endpoint of all files is here. Think states/behaviors 
# from the bottom up to this point/this file.

mastermind = Game.new

# 1. Computer generate's secret code.
computer = Computer.new
computer_input = computer.generate_secret_code

player = Player.new

puts "Each number corresponds to the color placed on the board.
1=>#{"Red".colorize(:red)} 2=>#{"Green".colorize(:green)} 3=>#{"Yellow".colorize(:yellow)} 
4=>#{"Blue".colorize(:blue)} 5=>#{"Cyan".colorize(:cyan)} 6=>#{"Magenta".colorize(:magenta)}"

while mastermind.game_on == true do
  # 2. User inputs guess
  player_input = player.turn
  p player_input
# 3a. Check if user input matches computer's secret code.
  feedback_pegs = mastermind.peg_check(player_input, computer_input)
  p feedback_pegs
# 3b. Check user turn count
  puts "Turns left: #{player.turns}"
  mastermind.turn_check(player.turns)
end
