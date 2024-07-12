require_relative 'lib/game'
require_relative 'lib/game/computer'
require_relative 'lib/game/player'

# Game flow goes here. Endpoint of all files is here. Think states/behaviors 
# from the bottom up to this point/this file.
mastermind = Game.new
# 1. Computer generate's secret code.
computer = Computer.new
computer_input = computer.generate_secret_code
p computer_input
# 2. User inputs guess
player = Player.new
player_input = player.turn
p player_input
# 3a. Check if user input matches computer's secret code.
feedback_pegs = mastermind.peg_check(player_input, computer_input)
p feedback_pegs
# 3b. Check user turn count
p player.turns
mastermind.turn_check(player.turns)

  









