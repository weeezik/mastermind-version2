class Game
  # States:
    # during the game or game has ended
  @@game_start = true
  def Game::status
    @@game_start
  end
  def Game::end
    @@game_start = false
  end
  # Behaviors: 
    # judge feedback pegs to determine if user wins
  def peg_check
    # puts user_pegs; puts comp_pegs
    # judge feedback pegs to determine if user wins/loses (i.e., comparison logic)
    # if there is winner/loser
    @@game_start = false
    @@game_start
  end
  def turn_check
    # judge player turns to determine if user wins/loses
    # if there is winner, return
    @@game_start = false
    @@game_start
  end
end