require_relative '../lib/game'

# Game class tests
describe "game class" do
  context "iniitalize method" do
    it "creates a mastermind object" do
      mastermind = Game.new
      expect(mastermind.is_a? Object).to eq(true)
    end
  end
end

describe "game class" do
  context "method will output the game status by default" do
    it "to be true" do
      expect(Game.status).to eq(true)
    end
  end
end

describe "game class" do
  context "of a game-ending situation has happenend" do
    it "changes the game status to false" do
      Game.end
      expect(Game.status).to eq(false)
    end
  end
end

describe "during win condition" do
  context "checking the peg_check function" do
    it "returns a @@game_start value that is false" do
      mastermind = Game.new
      mastermind.peg_check
      expect(Game.status).to eq(false)
    end
  end
end

describe "an instance method" do
  context "checking to see if the turn_check function" do
    it "returns a @@game_start value that is false" do
      mastermind = Game.new
      mastermind.turn_check
      expect(Game.status).to eq(false)
    end
  end
end