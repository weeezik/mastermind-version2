require_relative '../lib/game/positions'

#Position class tests
describe "position class" do
  context "create a new guess_position object" do
    it "outputs an array with a length of six (6 colors)" do
      guess_position = Positions::GuessPositions.new
      expect(guess_position.colors.count).to eq(6)
    end
  end
end

describe "position" do
  context "create a new feedback_position object" do
    it "outputs an array with a length of two (2 colors)" do
      feedback_position = Positions::FeedbackPositions.new
      expect(feedback_position.colors.count).to eq(2)
    end
  end
end