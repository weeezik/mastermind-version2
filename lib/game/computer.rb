class Computer
  def generate_secret_code
    comp_pegs = []
    possible_colors = [:red, :green, :yellow, :blue, :cyan, :magenta]
    4.times do
      comp_pegs << possible_colors.sample
    end
    comp_pegs
  end
end