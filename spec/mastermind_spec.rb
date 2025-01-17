require_relative '../mastermind'

describe "Gameplay" do
  context "first step" do
    it "computer generates a random 4-color array" do
      computer = Computer.new
      computer_input = computer.generate_secret_code
      expect(computer_input.size).to eq(4)
    end
  end
  context "second step" do
    it "user input generates a 4-color array" do
      player = Player.new
      player_input = player.turn
      expect(player_input.size).to eq(4)
    end
  end
end