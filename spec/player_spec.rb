require_relative '../lib/game/player'

#Player class tests
describe "output" do
  context "when creating a player object" do
    it "returns the class variable @turns" do
      player = Player.new
      expect(player.turns).to eq(12)
    end
  end
end

describe "an instance method" do
  context "after a player has played 4 pegs" do
    it "removes a turn from the player object" do
      player = Player.new
      expect(player.remove_turn).to eq(11)
    end
  end
end

describe "Player class method" do
  context "the user enters the numbers 1, 3, 5, 2" do
    it "outputs the array [:red, :yellow, :cyan, :green]" do
      player = Player.new
      expect(player.turn).to eq([:red, :yellow, :cyan, :green])
    end
  end
end