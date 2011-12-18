class Amr10f
  def run()
    cases = STDIN.gets.strip.to_i

    1.upto(cases) do
      n,a,d = STDIN.gets.strip.split(' ').map &:to_f
      puts ((n/2.0)*(2.0*a+(n-1.0)*d)).to_i
    end
  end
end

#Amr10f.new.run
