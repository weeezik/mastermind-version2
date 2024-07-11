require_relative '../main'

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

#Player class tests
describe "output" do
  context "when creating a player object" do
    it "returns the class variable @turns" do
      expect(Player.turns).to eq(12)
    end
  end
end

describe "an instance method" do
  context "after a player has played 4 pegs" do
    it "removes a turn from the player object" do
      Player.remove_turn
      expect(Player.turns).to eq(11)
    end
  end
end

#Computer class tests
describe "the output of the computer class method" do
  context "when the game is initiated" do
    it "prints four randomly selected colors" do
      example_colors_array = [:red, :green, :yellow, :blue, :cyan, :magenta]
      expect(Computer.generate_secret_code(example_colors_array).length).to eq(4)
    end
  end
end

