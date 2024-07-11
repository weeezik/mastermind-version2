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

