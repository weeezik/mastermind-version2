require_relative '../lib/game/computer'

#Computer class tests
describe "Computer class" do
  context "when the game object is initiated" do
    it "it outputs four randomly selected colors" do
      example_colors_array = [:red, :green, :yellow, :blue, :cyan, :magenta]
      computer = Computer.new
      expect(computer.generate_secret_code(example_colors_array).length).to eq(4)
    end
  end
end