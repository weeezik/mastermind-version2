

class Game
  # States:
    # during the game or game has ended
  def initialize
    @game_on = true
  end
  attr_accessor :game_on
  def end
    @game_on = false
  end
  # Behaviors: 
    # judge feedback pegs to determine if user wins
  def peg_check player_input, computer_input
    # judge feedback pegs to determine if user wins/loses (i.e., comparison logic)
    feedback_pegs = []
    player_input.each_with_index do |color, index|
      if computer_input[index] == color
        feedback_pegs << :black
      elsif computer_input.include? color
          feedback_pegs << :white
      else
        feedback_pegs << :empty
      end
    end
   if feedback_pegs == [:black, :black, :black, :black]
    @game_on = false
    puts "Player guessed correctly!"
   end
    feedback_pegs
  end
  def turn_check player_turns
    if player_turns == 0
      @game_on = false
      puts "Player has no more turns left."
    end
  end
end