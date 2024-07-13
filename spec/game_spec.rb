require_relative '../lib/game'

# Game class tests
describe "Game class" do
  context "iniitalize method" do
    it "creates a mastermind object" do
      mastermind = Game.new
      expect(mastermind.is_a? Object).to eq(true)
    end
  end
  context "method will output the game status by default" do
    it "to be true" do
      mastermind = Game.new
      expect(mastermind.game_on).to eq(true)
    end
  end
  context "of a game-ending situation has happenend" do
    it "changes the game status to false" do
      mastermind = Game.new
      mastermind.end
      expect(mastermind.game_on).to eq(false)
    end
  end
  # context "checking the peg_check function" do
  #   it "returns a @game_on value that is false" do
  #     mastermind = Game.new
  #     mastermind.peg_check
  #     expect(mastermind.game_on).to eq(false)
  #   end
  # end
  context "checking to see if the turn_check function" do
    it "returns a @game_on value that is false" do
      mastermind = Game.new
      mastermind.turn_check 12
      expect(mastermind.game_on).to eq(false)
    end
  end
  context "using peg_check method with real player and computer arrays" do
    it "outputs a 4-color feedback array" do
      computer_input = [:red, :magenta, :blue, :blue]
      player_input = [:green, :cyan, :red, :magenta]
      mastermind = Game.new
      expect(mastermind.peg_check(player_input, computer_input)).to eq([:empty, :empty, :white, :white])
    end
  end
end