class Nstep
  def run
    n = STDIN.gets.strip.to_i
    1.upto(n) do
      x,y = STDIN.gets.strip.split(' ').map &:to_i
      puts nstep(x, y)
    end
  end

  def nstep(x,y)
    if (x == y)
      #  1  2  3  4  5  6
      # +1 +3 +1 +3 +1 +3
      y     + (y / 2) * 2
    elsif (x == y + 2)
      (y+2) + (y / 2) * 2
    else
      'No Number'
    end
  end
end

#Nstep.new.run
