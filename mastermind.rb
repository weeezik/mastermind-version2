require_relative 'lib/game/computer'
require_relative 'lib/game/player'

# Game flow goes here. Endpoint of all files is here. Think states/behaviors 
# from the bottom up to this point/this file.

# 1. Computer generate's secret code.
computer = Computer.new
possible_colors = [:red, :green, :yellow, :blue, :cyan, :magenta]
computer_input = computer.generate_secret_code possible_colors
p computer_input
# puts "--Computer ancestors--"
# puts Computer.ancestors
# 2. User inputs guess
player = Player.new
player_input = player.turn
player.remove_turn
p player_input
# puts "--Player ancestors--"
# puts Player.ancestors
# 3. Check if user input matches computer's secrete code.









