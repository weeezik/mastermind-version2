require_relative '../lib/game/player'

#Player class tests
describe "Player class" do
  context "when creating a player object" do
    it "returns the class variable @turns" do
      player = Player.new
      expect(player.turns).to eq(12)
    end
  end
  context "after a player has played 4 pegs" do
    it "removes a turn from the player object" do
      player = Player.new
      expect(player.remove_turn).to eq(11)
    end
  end
  # context "the user enters the numbers 1, 3, 5, 2" do
  #   it "outputs the array [:red, :yellow, :cyan, :green]" do
  #     player = Player.new
  #     guess_positions = Positions::GuessPositions.new
  #     expect(player.full_turn(guess_positions.guess_colors_hash)).to eq([:red, :yellow, :cyan, :green])
  #   end
  # end
  context "display output" do
    it "with each user input" do
      player = Player.new
      expect(player.turn(player.position_values)).to eq([:red, :grey, :grey, :grey])
    end
  end

end