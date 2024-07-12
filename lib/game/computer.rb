class Computer
  def generate_secret_code colors
    comp_pegs = []
    4.times do
      comp_pegs << colors.sample
    end
    comp_pegs
  end
end